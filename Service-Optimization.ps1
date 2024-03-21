# Disable Services
$services = @(
    'lfsvc'
    'MSiSCSI'
    'MapsBroker'
    'Spooler'
    'SCardSvr'
    'SCPolicySvc'
    'TrkWks'
    'TapiSrv'
    'TabletInputService'
    'seclogon'
    'WbioSrvc'
    'RemoteAccess'
    'XblAuthManager'
    'XblGameSave'
    'XboxNetApiSvc'
)

Write-Output "`n`n 1) Disabling Services"
Start-Sleep -Seconds 3

foreach($service in $services)
{
    Set-Service -Name "$service" -StartupType Disabled | Out-Null
    Start-Sleep -Seconds 1
}

# Disable Background Apps
Write-Output "`n`n 2) Disabling BACKGROUND APPS"
New-Item -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' -ItemType Directory -Force | Out-Null
Start-Sleep -Seconds 1
New-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy' -Name LetAppsRunInBackground -Value 2 -PropertyType DWord -Force | Out-Null

Start-Sleep -Seconds 3

New-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications' -Name GlobalUserDisabled -Value 0 -PropertyType DWord -Force | Out-Null
Start-Sleep -Seconds 1
New-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Search' -Name BackgroundAppGlobalToggle -Value 1 -PropertyType DWord -Force | Out-Null

# Disable Startup Apps
Write-Output "`n`n 3) Disabling Startup APPS"
Remove-ItemProperty -Path 'HKLM:\Software