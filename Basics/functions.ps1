# Pwsh functions


# Basic function
function Invoke-PrintRange($range) {
    if ($range -notmatch "^\d+$") {
        Write-Error("The argument to this fuction should be a positive interger") -Verbose
        break
    }
    $num = 0
    while ($num -le $range) {
        Write-Output($num)
        $num++
    }
}

Invoke-PrintRange -12


# Advanced function

function Invoke-WarnTemperature {
    [CmdletBinding()]
    Param(
        [int]$temperature
    )
    switch ($temperature) {
        { $_ -lt 32 } { Write-Output "The temperature is below freezing point"; break }
        { $_ -le 50 } { Write-Output "The weather is cool"; break }
        { $_ -lt 70 } { Write-Output "The weather is warm"; break }

        default { "The weather is too hot" }
    }
}

Invoke-WarnTemperature -temperature 57

<#
Exercise : Design an advanced function to add two numbers with the following features
    -Function Documentation
    -Recieve more than one parameters
    -Must have verbose funtionality
#>

function Invoke-AddTwoNumbers{
    <#
        .SYNOPSIS
        Understanding advanced functions

        .DESCRIPTION
        This function adds two integers

        .PARAMETER num1
        num1: First number

        .PARAMETER num2
        num2: Second number

        .EXAMPLE
        Invoke-AddTwoNumbers 4 5
        Invoke-AddTwoNumbers -num1 4 -num2 5
        Invoke-AddTwoNumbers (4 5)
    #>
    [CmdletBinding()] # Enabling the use of common parameters like -Verbose
    Param( 
        [int]$num1,
        [int]$num2
    )

    Write-Verbose "You passed the following arguments"
    Write-Verbose ("="*50)
    Write-Verbose "First number: $num1"
    Write-Verbose "Second number: $num2"

    Return $num1 + $num2
}

$add = Invoke-AddTwoNumbers 4 65 -Verbose
$add 



