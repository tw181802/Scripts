<?php 
//Arithmetic
$a = 5;
$b = 10;
$sum = $a + $b;
echo $sum;

//Functions
function add($a, $b) {
    return $a + $b;
}
echo add(5, 10);


//Conditionals If-Else
$number = 10;
if ($number > 5) {
    echo "Greater than 5";
} else {
    echo "5 or less";
}

//Loops
for ($i = 0; $i < 5; $i++) {
    echo $i . "\n";
}

//Data Structures
$numbers = array(1, 2, 3, 4, 5);
foreach ($numbers as $number) {
    echo $number . "\n";
}




?> 
