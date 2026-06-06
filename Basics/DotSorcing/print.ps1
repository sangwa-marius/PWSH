<#
This dumps all variables, functions, aliases... in this file
And the $PSScriptRoot helps to use the resolved path from the home
#>
. "$PSScriptRoot/fetch.ps1" 


function Invoke-CallAll{
  $UserDetails =  Invoke-FetchUser "/home/marius/pwsh/Basics/DotSorcing/data.csv"
  Invoke-ExtractEmail $UserDetails
}

Invoke-CallAll

<#
Executing this script manually, (./print.ps1) creates 
a script scope which vanishes after execution, while
dot-sourcing it persists its functions, variables
and the aliases and those of which it has dot-sourced
(./fetch.csv)
#>
