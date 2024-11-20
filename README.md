# Active Directory User Creation Script

This repository contains a PowerShell script designed to automate the creation of Active Directory (AD) users. It creates an organizational unit (OU) named `_USERS` and adds users to it based on a list of names provided in a text file.

---

## Features

- **Automated User Creation**: Quickly create users in Active Directory with a predefined password.
- **Organizational Unit Setup**: Automatically creates an `_USERS` OU for organizing the users.
- **Configurable Inputs**: Easily customize user details and password.

---

## Prerequisites

### 1. System Requirements
- Windows Server with Active Directory Domain Services (AD DS) installed.
- PowerShell 5.1 or later.

### 2. Permissions
Ensure the script is run by a user with:
- Administrative privileges on the AD domain.
- Permission to create objects in AD.

### 3. Active Directory Module
Install the Active Directory PowerShell module by running:
```powershell
Install-WindowsFeature -Name RSAT-AD-PowerShell
Installation
Clone or download this repository:

bash
Copy code
git clone https://github.com/your-username/ad-user-script.git
cd ad-user-script
Place a text file named magacyo.txt in the root directory of the repository. Each line should contain a user's first and last name separated by a space.

Example of magacyo.txt:

Copy code
John Doe
Jane Smith
Ali Ahmed
Usage
Open PowerShell as Administrator.

Navigate to the directory containing the script:

powershell
Copy code
cd path\to\script
Run the script:

powershell
Copy code
.\Create-ADUsers.ps1
The script will:

Create an Organizational Unit (OU) named _USERS.
Read user names from magacyo.txt.
Create Active Directory user accounts with the specified password.
Customization
Variables to Edit
$PASSWORD_FOR_USERS: Default password for all users.
$USER_FIRST_LAST_LIST: Path to the text file containing user names.
Example:

powershell
Copy code
$PASSWORD_FOR_USERS = "SecureP@ssw0rd"
$USER_FIRST_LAST_LIST = Get-Content .\names.txt
Script Behavior
Organizational Unit: If _USERS OU already exists, the script reuses it.
User Account Details:
Username format: First initial + Last name (e.g., jdoe for John Doe).
Password: The value specified in $PASSWORD_FOR_USERS.
Password policy: Password never expires.
Troubleshooting
Command Not Found: Ensure the Active Directory module is installed:

powershell
Copy code
Import-Module ActiveDirectory
Access Denied: Verify the user running the script has necessary permissions.

Invalid Input File: Ensure magacyo.txt contains valid entries in the format:

Copy code
FirstName LastName
Sample Output
plaintext
Copy code
Creating user: jdoe
Creating user: jsmith
Creating user: aahmed
Contributing
Contributions are welcome! Feel free to fork this repository and submit a pull request.

License
This project is licensed under the MIT License.

markdown
Copy code

### Explanation:
- **Overview**: Clarifies the script's purpose and functionality.
- **Usage**: Guides users on how to prepare the input and run the script.
- **Customization**: Highlights editable parts of the script for different use cases.
- **Troubleshooting**: Addresses common issues users may encounter.
- **Professional Formatting**: Adds structure and user-friendly details. 

Let me know if you'd like further adjustments!





