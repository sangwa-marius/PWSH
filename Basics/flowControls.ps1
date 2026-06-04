#flowControls

if (Get-Process -Name 'code') {
    Write-Output("Vs code is running")
}

# if-else else-if

$temperature = 30

if ($temperature -lt 32) {
    Write-Output("Blow freezing point")
}
elseif ($temperature -le 50) {
    Write-Output("Cool")
}
elseif ($temperature -le 70) {
    Write-Output("Warm")
}
else {
    Write-Output("Hot")
}

# switch statements

$temperature = 32

switch ($temperature) {
    { $_ -lt 32 } { Write-Output("Below freezing point"); break }
    { $_ -le 50 } { Write-Output("Cool"); break }
    { $_ -le 70 } { Write-Output("Warm"); break }
    default { Write-Output("Hot") }
}