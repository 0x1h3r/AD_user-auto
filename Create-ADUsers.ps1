# ----- Edit these Variables for your own Use Case ----- #
$PASSWORD_FOR_USERS   = "Password1"    # Waa Password ka ay ka simanyihiin dhamaan users ka 
$USER_FIRST_LAST_LIST = Get-Content .\magacyo.txt # halka uu yaalo fileka magacyada kugu jiraan
$OU_NAME              = "_USERS"      # Magaca Organizational Unit ka
# ------------------------------------------------------ #


$password = ConvertTo-SecureString $PASSWORD_FOR_USERS -AsPlainText -Force

# abuurida  Organizational Unit (Hadii uusan horey u jirin )
if (-not (Get-ADOrganizationalUnit -Filter {Name -eq $OU_NAME} -ErrorAction SilentlyContinue)) {
    New-ADOrganizationalUnit -Name $OU_NAME -ProtectedFromAccidentalDeletion $false
    Write-Host "Organizational Unit '$OU_NAME' created successfully." -ForegroundColor Green
} else {
    Write-Host "Organizational Unit '$OU_NAME' already exists." -ForegroundColor Yellow
}


$ouDistinguishedName = (Get-ADOrganizationalUnit -Filter {Name -eq $OU_NAME}).DistinguishedName


foreach ($n in $USER_FIRST_LAST_LIST) {
    
    $first = $n.Split(" ")[0].Trim()

    
    $username = $first.ToLower()

    
    Write-Host "Creating user: $username" -ForegroundColor Cyan

    
    New-AdUser -AccountPassword $password `
               -GivenName $first `
               -DisplayName "$first" `
               -Name $username `
               -SamAccountName $username `
               -UserPrincipalName "$username@EvilCorp.local" `
               -EmployeeID $username `
               -PasswordNeverExpires $true `
               -Path $ouDistinguishedName `
               -Enabled $true
}

Write-Host "User creation process completed." -ForegroundColor Green
