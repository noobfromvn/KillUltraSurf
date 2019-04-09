# KillUltraSurf

This script using for administrators prevent user from using UltraSurf in company environment.

Tested on UltraSurf version 1902 and two previous version.

## How to

* Put [the script](/check_process.ps1) in folder **C:\\KillUltraSurf\\KillUltraSurf.ps1** or any folder you would.
* Edit permission to prevent user change/delete this script.
* Follow [this tutorial](https://community.spiceworks.com/how_to/17736-run-powershell-scripts-from-task-scheduler) to set up scheduler task.


```powershell
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File "C:\\KillUltraSurf\\KillUltraSurf.ps1" -NoProfile -Noninteractive
```

## Note

* When user use UltraSurf, this script will kill the UltraSurf process so user can not connect to Internet. You can fix it by remove proxy in Internet Options setting.
* Using your own risk