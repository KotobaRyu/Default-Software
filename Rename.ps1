$Name = Read-Host -Prompt 'Computer Name'
Rename-Computer -NewName "$Name"
$OSWMI=Get-WmiObject -class Win32_OperatingSystem
$OSWMI.Description="$Name"
$OSWMI.put()