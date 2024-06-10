New-ItemProperty -Name NetJoinLegacyAccountReuse -Path Registry::HKLM\System\CurrentControlSet\Control\LSA 

$User = "Domain\User"
$PWord = ConvertTo-SecureString -String "Password" -AsPlainText -Force
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, $PWord

Remove-ItemProperty -Name NetJoinLegacyAccountReuse -Path Registry::HKLM\System\CurrentControlSet\Control\LSA