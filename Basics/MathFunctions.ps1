<#
Here are some Math functions,
and these functions will grow little by little
#>

function Invoke-Add{
    Param([int[]]$arrayOfNumbers)
    $sum = 0
    foreach($number in $arrayOfNumbers){
        $sum += $number
    }
    return $sum
}

$result = Invoke-Add 4,6,7
Write-Output "The sum is $result"


function square{
    [CmdletBinding()]
    param($number)
    return $number*$number
}

$result = square 4
$result

function Invoke-Exponent{
    [CmdletBinding()]
    param(
        [int]$base,
        [int]$index
    )

    if($index -lt 0){
        Write-Output "The exponent should be a positive integer"
        break
    }

    $power = 1
    for($i=0; $i -lt $index; $i++){
        $power*=$base
    }
    return $power
}

Write-Output "$(Invoke-Exponent -4 3)"