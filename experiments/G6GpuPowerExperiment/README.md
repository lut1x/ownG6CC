# G6 GPU Power Experiment

Отдельная экспериментальная утилита для GIGABYTE G6 MF с BIOS FB10. Она не меняет основной проект и не пытается отключать устройство через Диспетчер устройств.

## Проверка возможностей

Утилита выполняет штатный OEM-запрос списка возможностей (подкоманда `4/8`). Он только читает флаги прошивки. Нужна DLL из portable-сборки с совпадающим SHA-256:

```powershell
dotnet run --project experiments/G6GpuPowerExperiment -- probe --dchu dist/G6ControlCenter-0.2.0-portable/vendor/InsydeDCHU.dll
```

Успешная проверка должна сообщить отдельно о MUX и о `Штатное отключение питания NVIDIA`.

## Переключение питания NVIDIA

Функция существует только если второй флаг подтверждён. Штатный FnKey вызывает оригинальный `cc30wk.exe` с командой `0x0013`: аргумент `0` выключает питание NVIDIA, `1` включает обратно. Утилита повторяет исключительно этот вызов, но требует явных путей и `--confirm`. Перед запуском она сверяет SHA-256 worker'а с исследованным файлом из штатного пакета Control Center 3.0-6.045; другой EXE она не запустит.

```powershell
# Сначала закрыть игры, браузеры с аппаратным ускорением и программы NVIDIA.
dotnet run --project experiments/G6GpuPowerExperiment -- off --dchu dist/G6ControlCenter-0.2.0-portable/vendor/InsydeDCHU.dll --worker "C:\путь\к\cc30wk.exe" --confirm

# Возврат RTX
dotnet run --project experiments/G6GpuPowerExperiment -- on --dchu dist/G6ControlCenter-0.2.0-portable/vendor/InsydeDCHU.dll --worker "C:\путь\к\cc30wk.exe" --confirm
```

Не выполнять `off`, пока не получен положительный флаг из `probe`. После выключения не подключать дисплеи к портам, которые могут быть физически заведены на RTX. Если экран или внешние устройства работают неправильно, перезагрузи ноутбук и выполни `on` после запуска Windows.
