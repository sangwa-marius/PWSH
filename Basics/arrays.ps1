#Arrays

$empy_array = @()
$empy_array += ,@('Maius')
Write-Output $empy_array
$empy_array.GetType()

# specific types arrays
[int32[]]$arr1 = 1,2,3,4,5
[string[]]$string_array = 'Sangwa', 'Marius', 'Ezra'
$arr1.GetType()
$string_array.GetType()

#Array list
$arr2 = New-Object System.Collections.ArrayList
$arr2.GetType()

#Array index
$arr1[0] 
$string_array[2]


#Multidimensional array
$mdarr = @()
$mdarr += , @('Subject','Math','90')
$mdarr += , @('Subject','English','99')
$mdarr += , @('Subject','Physics','98')

foreach($arr in $mdarr){
    Write-Host $arr
}


