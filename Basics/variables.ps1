<#
This is a Variable script
Author : SANGWA Marius
Date: 04/06/2026
Place: Rwanda Coding Academy
#>

#pwsh variables are local scopped by default

[string]$name = 'Sangwa Marius' # local strongly typed variable
[int]$age = 34
[bool]$isPro = 0
$Global:Marius = 'This is a global variable' # Global variable declaration
 $name 
 $age
 $isPro

 # List variable
 Get-ChildItem variable:* # Get all variables
 #Set variable
 $setVariable = 'set'
 $setVariable

 #Print variable
 $print = 'print'
 Write-Output $print # outputs print

 #Clear variable
 Clear-Variable name
 Get-ChildItem variable:age  # outputs age   34
 Get-ChildItem variable:name # outputs name


 #Remove variable
 Remove-Variable age

 # Write to  a file

 Write-Output "Hello , My anme is SANGWA Marius , and I'm studying powershell, a very good scriptiong language." | Out-File ./marius.txt # writing to a text file
 Get-Process | Select-Object id ,ProcessName | Export-Csv $home/pwsh/proc.csv # writing to a csv file

 #Read file contents to a variable

 $fileInfo = Import-Csv $home/pwsh/proc.csv
 $fileInfo



 


