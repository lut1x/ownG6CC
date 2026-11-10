// Static inspection only: never loads DLLs or invokes vendor code.
import fs from 'node:fs';
import crypto from 'node:crypto';
import path from 'node:path';

function inspect(file) {
  const b = fs.readFileSync(file);
  const u16 = o => b.readUInt16LE(o);
  const u32 = o => b.readUInt32LE(o);
  if (b.length < 64 || u16(0) !== 0x5a4d) throw new Error('Missing MZ header');
  const pe = u32(0x3c);
  if (u32(pe) !== 0x4550) throw new Error('Missing PE signature');
  const coff = pe + 4, opt = coff + 20;
  const magic = u16(opt);
  if (![0x10b, 0x20b].includes(magic)) throw new Error('Unknown optional header');
  const dd = opt + (magic === 0x20b ? 112 : 96);
  const sectionStart = opt + u16(coff + 16);
  const sections = [];
  const cstr = o => {
    const end = b.indexOf(0, o);
    if (o < 0 || o >= b.length || end < 0) throw new Error('Invalid string offset');
    return b.toString('ascii', o, end);
  };
  for (let i = 0; i < u16(coff + 2); i++) {
    const s = sectionStart + i * 40;
    sections.push({ name: b.toString('ascii', s, s + 8).replace(/\0.*$/, ''),
      virtualSize: u32(s + 8), rva: u32(s + 12), rawSize: u32(s + 16), raw: u32(s + 20) });
  }
  const offset = rva => {
    if (rva < u32(opt + 60)) return rva;
    const s = sections.find(s => rva >= s.rva && rva < s.rva + s.rawSize);
    if (!s) throw new Error(`Unmapped RVA ${rva.toString(16)}`);
    return s.raw + rva - s.rva;
  };
  const exports = [];
  if (u32(dd)) {
    const e = offset(u32(dd));
    const count = u32(e + 24);
    const functions = offset(u32(e + 28));
    const names = count ? offset(u32(e + 32)) : 0;
    const ordinals = count ? offset(u32(e + 36)) : 0;
    for (let i = 0; i < count; i++) {
      const index = u16(ordinals + i * 2);
      exports.push({ name: cstr(offset(u32(names + i * 4))),
        ordinal: u32(e + 16) + index, rva: '0x' + u32(functions + index * 4).toString(16) });
    }
  }
  const imports = [];
  if (u32(dd + 8)) {
    let d = offset(u32(dd + 8));
    while (u32(d) || u32(d + 12) || u32(d + 16)) {
      imports.push(cstr(offset(u32(d + 12))));
      d += 20;
    }
  }
  const relevantStrings = [...new Set((b.toString('latin1').match(/[\x20-\x7e]{6,}/g) || [])
    .filter(s => /DCHU|AcpiBridge|DeviceIoControl|CLV000|\.pdb$|CreateFile|CM_Get_Device_Interface/.test(s)))];
  return { file: path.resolve(file), size: b.length,
    sha256: crypto.createHash('sha256').update(b).digest('hex'),
    machine: '0x' + u16(coff).toString(16), peFormat: magic === 0x20b ? 'PE32+' : 'PE32',
    managed: u32(dd + 14 * 8) !== 0, exports, imports, relevantStrings };
}
if (process.argv.length < 3) throw new Error('Usage: node tools/inspect-pe.mjs file.dll [file.exe ...]');
console.log(JSON.stringify(process.argv.slice(2).map(inspect), null, 2));
