//Arithmetic
int a = 5;
int b = 10;
int sum = a + b;
std::cout << sum << std::endl;


// Functions
int Add(int a, int b)
{
    return a + b;
}

std::cout << Add(5, 10) << std::endl;

//Conditionals if-else
int number = 10;
if (number > 5)
{
    std::cout << "Greater than 5" << std::endl;
}
else
{
    std::cout << "5 or less" << std::endl;
}


// Loops
for (int i = 0; i < 5; i++)
{
    std::cout << i << std::endl;
}


//Data Structues (arrays/lists)
int numbers[] = {1, 2, 3, 4, 5};
for (int i = 0; i < 5; i++)
{
    std::cout << numbers[i] << std::endl;
}
