#Understanding loops

# for loop
$names = @("Sangwa", "Marius", "Ganza", "Arsene", "Anne Marie")
for ($i = 0; $i -lt ($names.Count); $i++) {
    $j = $i + 1
    Write-Output("The $j th name is " + $names[$i])
}

# foreach loop
$users = "Mukesh", "John", "Max", "Merry", "Jackson"

foreach ($user in $users) {
    Write-Output("User: " + $user)
}


# ForEach-Object loop
Get-ChildItem /home/marius/pwsh/Basics | ForEach-Object {
    Write-Output("File: " + $_.BaseName)
}
 
# while loop
$num = 1
while ($num -le 10) {
    Write-Host($num + " ")
    $num++
}

# do-while loop
$num = 0
Do {
    $num++
    Write-Output($num)
}while ($num -le 10)

$num = 0
do {
    Write-Output($num)
    $num++
    if($num -eq 5){
         break # interrupting a loop
    }
} until ($num -eq 10)

# Pipeling - implicit looping
Get-Process | Select-Object -Property "Cpu(s)", "id" , "ProcessName"  # follow order of properties
