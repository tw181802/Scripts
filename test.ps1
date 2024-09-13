#Arithmetic
$a = 5
$b = 10
$sum = $a + $b
Write-Output $sum


#Functions
function Add($a, $b) {
    return $a + $b
}

Write-Output (Add 5 10)


#Conditionals If-Else
$number = 10
if ($number -gt 5) {
    Write-Output "Greater than 5"
} else {
    Write-Output "5 or less"
}


#Loops
for ($i = 0; $i -lt 5; $i++) {
    Write-Output $i
}

#Data Structures

$numbers = 1, 2, 3, 4, 5
foreach ($number in $numbers) {
    Write-Output $number
}

