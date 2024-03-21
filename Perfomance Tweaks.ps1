Write-Output "`n`n  You are about to Set your System Power plan to 'HIGH PERFORMANCE'"
Write-Output "`n  This will Drain the Battery much faster`n`n"

$response  = Read-Host -Prompt "PROCEED [N/n for No]??? : "

if(($response -ne 'N') -or ($response -ne 'n'))
{
    $p = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\{025A5937-A6BE-4686-A844-36FE4BEC8B6D}'
    Start-Sleep -Seconds 1
    Set-ItemProperty -Path "HKLM:\$p" -Name PreferredPlan -Value '8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c'
    Write-Output "`n  ALL DONE !!!`n"
}
else
{
    Write-Output "`n  OK :-(`n"
    exit
}

# 381b4222-f694-41f0-9685-ff5bb260df2e - For Balanced
# a1841308-3541-4fab-bc81-f71556f20b4a - For Power Saver
# 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c - For High Performance