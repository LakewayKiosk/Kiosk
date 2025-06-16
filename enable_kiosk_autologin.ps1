$RegPath = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon"
$DefaultUsername = "KIOSK_GUEST"
$DefaultPassword = "LKWYK10sk$!"
$DefaultDomain = "WORKGROUP"

Set-ItemProperty $RegPath "AutoAdminLogon" -Value "1" -Type String
Set-ItemProperty $RegPath "DefaultUsername" -Value "$DefaultUsername" -Type String
Set-ItemProperty $RegPath "DefaultPassword" -Value "$DefaultPassword" -Type String
Set-ItemProperty $RegPath "DefaultDomainName" -Value "$DefaultDomain" -Type String

Start-Sleep -Seconds 5
Restart-Computer -Force
