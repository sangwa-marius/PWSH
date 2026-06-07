<#
This is a simple sample module Use "Import-Module pathToThisFile" 
to use this file in the current session. You import this file by 
only providing the full path to this file. But there is  a way to 
create a module folder in one of the module directories ($env:PSModulePath) 
same name as this file and save in this file as a psm1 file and to import
this module , you will be using the foldername instead of the whole path
#>
function Invoke-FetchUsers{
    Param($csvPath)
    return Import-Csv $csvPath
}

function Invoke-FormattedUser{
    Param($data)
    $data | ForEach-Object{
        Write-Output "The email of $($_.name) is $($_.email)"
    }
}

Export-ModuleMember -Function Invoke-FetchUsers # This line specifies the functions to be imported


<#
Module components
    -Code files
    -Additional assemblies
    -Manifest file
    -Directory
#>