#region Variables
$powerPlanGuid = '8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c'
$powerPlanRegistryPath = 'HKLM:\SYSTEM\ControlSet001\Control\Power\PowerSettings\0012ee47-9041-4b5d-9b77-535fba8b1442\51dea550-bb38-4bc4-991b-eacf37be5ec8\'
$visualEffectsRegistryPath = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects'
$defenderTaskName = 'Windows Defender Scheduled Scan'
$defenderTaskPath = '\Microsoft\Windows\Windows Defender\'
#endregion

#region Functions
function Set-PowerPlan {
    Write-Output "`n`n 1) TWEAKING CPU Cores"
    Start-Sleep -Seconds 3

    Set-ItemProperty -Path $powerPlanRegistryPath -Name ValueMax -Value 0 | Out-Null
    Start-Sleep -Seconds 1
    Set-ItemProperty -Path $powerPlanRegistryPath -Name ValueMin -Value 0 | Out-Null
}

function Set-VisualEffects {
    Write-Output "`n`n 2) ADJUSTING APPEARANCE FOR BEST PERFORMANCE"
    Start-Sleep -Seconds 3

    Set-ItemProperty -Path $visualEffectsRegistryPath -Name VisualFXSetting -Value 2 | Out-Null
}

function Set-DefenderScheduledScan {
    Write-Output "`n`n 3) TWEAKING Windows Defender Scheduled Scan"
    Start-Sleep -Seconds 3

    $p = New-ScheduledTaskPrincipal -UserId "$($env:USERDOMAIN)\$($env:USERNAME)" -RunLevel "Limited"
    Start-Sleep -Seconds 1
    $s = New-ScheduledTask