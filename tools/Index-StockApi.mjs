// Index recovered vendor calls as evidence; this does not execute recovered code.
import fs from 'node:fs';
import path from 'node:path';
const root = path.resolve('research/decompiled');
const calls = [];
const names = '(GetDCHU_Data_Integer|GetDCHU_Data_Buffer|SetDCHU_DataEx|SetDCHU_Data|ReadAppSettings|WriteAppSettings|GetWMIPackage|SetWMIPackageEx|SetWMIPackage|GetWMI|SetWMI|GetAPPData|SetAPPData)';
const pattern = new RegExp('\\b'+names+'\\(([^;]*)');
function walk(dir) {
  for (const entry of fs.readdirSync(dir, {withFileTypes:true})) {
    const file = path.join(dir, entry.name);
    if (entry.isDirectory()) walk(file);
    else if (entry.name.endsWith('.cs')) {
      const lines = fs.readFileSync(file,'utf8').split(/\r?\n/);
      lines.forEach((line,index) => {
        const match = line.match(pattern);
        if (!match || /extern\s/.test(line)) return;
        calls.push({file:path.relative(root,file).replaceAll('\\','/'),line:index+1,
          method:match[1],expression:line.trim(),
          literalFirstArgument: /^\s*(\d+|0x[0-9a-f]+)\s*[,)]/i.exec(match[2])?.[1] ?? null});
      });
    }
  }
}
walk(root);
fs.writeFileSync('research/api-call-index.json',JSON.stringify({
  note:'Text index, not a complete call graph. Methods named WMI may wrap DCHU, not Windows WMI.',
  calls
},null,2)+'\n');
console.log(`Indexed ${calls.length} recovered call/declaration lines.`);
