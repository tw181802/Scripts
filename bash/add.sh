# Arithmetic
a=5
b=10
sum=$((a + b))
echo $sum

#Functions
add() {
    local a=$1
    local b=$2
    echo $((a + b))
}

add 5 10

#Conditionals if-else
number=10
if [ $number -gt 5 ]; then
    echo "Greater than 5"
else
    echo "5 or less"
fi

# Loops
for i in {0..4}; do
    echo $i
done

