#Arthmetic operations

3+4
10-4
35/7
10%3

#String concatination
$var1= "Powershell"
$var2 = " Training"
$var3 = $var1 +$var2
Write-Output $var3 # outputs Powershell Training

#Concantinate Hash tables
$hash1 = @{"One"=1}
$hash2 = @{"two"=2}
$hash3 = @{"three"=3}
$hash4 = $hash1 +$hash2 +$hash3
Write-Output $hash4

#Concantinate arrays
$array1 = 1, "one"
$array2 = 2, "Two"
$array3 = $array1 + $array2
Write-Host $array3

#string multiplication
Write-Output ("="*50)
Write-Output "Powershell is becomming sweeter"
Write-Output ("="*50)

# Comparison operators
2 -eq 1
1 -lt 4
"Marius" -eq "marius" # case insenstive
4,5,6 -eq 4
$great = 3,4,5,6,7,8 -gt 5 # Extracting numbers greater than 5
$great.Count

#Matching (like)
"PowerShell" -like "*she*" # case insenstive
"powershell","Bourne Ageain Shell", "Zshell" , "Marius", "sangwa" -like "*shell*"

"PowerShell" -notlike "*she*" # case insenstive
"powershell","Bourne Ageain Shell", "Zshell" , "Marius", "sangwa" -notlike "*shell*"

#Matching (match)
$shell = "PowerShell"; $match1 ="she"
$shell -match $match1 # case insenstive
"Sunday" -match "su"
"powershell","Bourne Ageain Shell", "Zshell" , "Marius", "sangwa" -match "*shell*"

"PowerShell" -notmatch "sh" # case insenstive
"powershell","Bourne Ageain Shell", "Zshell" , "Marius", "sangwa" -notmatch "shell"

#Contain

"Uwimana", "Niyishobora", "abc" -contains "abc"


