# KillUltraSurf.ps1
# Author: Thu Nguyen (skype: mr.dangthu1993)

$target ="u"

$process = Get-Process | Where-Object {$_.ProcessName -eq $target}

if ($process)
{

    $ultrasurf_id = (gwmi win32_process | ? processid -eq  $process.Id).parentprocessid
    # kill process
    Stop-Process -Id $ultrasurf_id

}
