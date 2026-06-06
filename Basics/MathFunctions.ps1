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