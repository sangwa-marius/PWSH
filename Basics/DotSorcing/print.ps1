. "$PSScriptRoot/fetch.ps1"


function Invoke-CallAll{
  $UserDetails =  Invoke-FetchUser "/home/marius/pwsh/Basics/DotSorcing/data.csv"
  Invoke-ExtractEmail $UserDetails
}

Invoke-CallAll
