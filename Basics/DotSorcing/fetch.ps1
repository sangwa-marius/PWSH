function Invoke-FetchAndPrintUser{
    param($csvPath)

    if([string]::IsNullOrEmpty($csvPath) -or [string]::IsNullOrWhiteSpace($csvPath)){
        Write-Output "[Error]: You should provide a path"
        return
    }

    $UserDetails = Import-Csv $csvPath 
    foreach($User in $UserDetails){
        Write-Output "The email of $($User.name) is $($User.Email)"
    }
}


