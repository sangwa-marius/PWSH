<#
This dumps all variables, functions, aliases... in this file no private helpers , 
every thing is public to the current terminal session.
And the $PSScriptRoot helps to use the resolved path from the home
#>
. "$PSScriptRoot/fetch.ps1" 

Invoke-FetchAndPrintUser "$PSScriptRoot/data.csv" # Notice this function is from fetch.ps1

<#
Executing this script manually, (./print.ps1) creates 
a script scope which vanishes after execution, while
dot-sourcing it persists its functions, variables
and the aliases and those of which it has dot-sourced
(./fetch.csv)
#>
