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

Installation
Clone the Repository:
Clone the script to your local machine using Git:

bash
Copy code
git clone https://github.com/0x1h3r/AD_user-auto.git

Modify Variables:
Open the script in a text editor and configure the following variables as needed:

$PASSWORD_FOR_USERS: Set a secure password for created users.
$OU_PATH: Update the Organizational Unit (OU) path to match your AD structure.
$USER_COUNT: Set the number of users to create (if random users are desired).

Run the Script:
Launch PowerShell as an administrator and run the script:

powershell

.\Create-ADUsers.ps1

Usage

Customizing User Creation
The script uses random adjectives and nouns to generate unique usernames. You can customize these by editing the $ADJECTIVES and $NOUNS arrays in the script.
Organizational Unit (OU)
By default, the script creates an _USERS OU. You can modify this name or the structure in the $OU_PATH variable.
Error Handling
If a user already exists, the script skips the creation and logs a message.
Ensure your Active Directory is accessible and your machine has domain connectivity.
Example Output
When executed, the script outputs the progress in PowerShell:

plaintext
Copy code
Creating user: BoldEagle1
Creating user: CleverFox2
Creating user: SwiftTiger3
Creating user: MightyHawk4
Creating user: BravePanther5
User creation completed!
License
This project is licensed under the MIT License. See the LICENSE file for details.

Contribution
Contributions are welcome! Please fork the repository and submit a pull request with your improvements or ideas.

Fork the repository.
Create a new branch for your changes.
Submit a pull request with a detailed explanation of your updates.
Disclaimer
This script is provided as-is and should be tested in a non-production environment before deployment. The author is not responsible for any issues caused by misuse or errors in the script.
