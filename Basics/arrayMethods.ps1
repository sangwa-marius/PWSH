#sorting an array

$array = 4,12,6,8,5
$array
$sorted=$array | sort -n
$sorted

#Adding and removing array items
$fruit_array = "apple", "Mango", "Banana", "orange"
$fruit_array.Length # array length
$fruit_array.Get(1)
$fruit_array.GetUpperBound()

[System.Collections.ArrayList]$fruit_array_list = $fruit_array
$fruit_array_list.GetType() #Returns the type of the variable
$fruit_array_list.Add("Wigo") # Adds Wigo at the end of the array
$fruit_array_list.RemoveAt(1) #Removes element at index 1
$fruit_array_list.GetRange(0,2)
$fruit_array_list.Contains("Banana") # Checking existance of an element in an array
$fruit_array_list.Count# List length
$fruit_array | Out-File ./fruits.txt # print the array elements to a file
$fruit_array = $null
$fruit_array -eq $null



