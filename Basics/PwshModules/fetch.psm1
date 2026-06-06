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

Export-ModuleMember -Function Invoke-FetchUsers