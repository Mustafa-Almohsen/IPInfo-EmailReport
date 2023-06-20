# IPInfo-EmailReport

Responsibility and Ethical Use:
It is essential to use this script responsibly and ethically. 
The script's purpose is to streamline information reporting and enhance system monitoring, primarily
for authorized and legitimate purposes. Any misuse or unauthorized access to systems could result in legal consequences.

Features:
- Retrieves the real location and IP address using an IP geolocation service.
- Gathers system information, including COMPUTERNAME, LOGONSERVER, PROCESSOR_IDENTIFIER, PROCESSOR_LEVEL, OS, and USERPROFILE.
- Constructs an email report with the collected information.
- Sends the report via Gmail's SMTP server using provided credentials.

Usage:
1. Generate an app password for your Gmail account to use with this script. Follow these steps:

    Go to your Gmail account settings.
    Navigate to the "Security" tab.
    Look for the "App Passwords" section.
    Generate a new app password specifically for this script.
    Replace "your-password" with the generated app password.
    Note: Generating an app password provides an additional layer of security
    by not using your actual Gmail account password directly in the script.
    
  2. Modify the script variables such as recipient, sender, username, password, and SMTP server settings.
  3. Run the script with Administrator Privilege to gather IP information, construct the email report, and send it.

If you turn off Windows Defender, you can run the script without Administrator Privilege. 
windows defender block the script from working properly.
Contributions and feedback are welcome!
If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request.
 
