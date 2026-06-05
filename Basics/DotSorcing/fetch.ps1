function Invoke-FetchUser{
    param($csvPath)

    $UserDetails = Import-Csv $csvPath
    Return $UserDetails
}
function Invoke-ExtractEmail{
    param($UserDetails)

    foreach($User in $UserDetails){
        Write-Output("The email of "+$User.name+" is "+$User.Email)
    }
}

function Invoke-CallAll{
  $UserDetails =  Invoke-FetchUser "/home/marius/pwsh/Basics/DotSorcing/data.csv"
  Invoke-ExtractEmail $UserDetails
}

