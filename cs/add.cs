//Arithmetic
int a = 5;
int b = 10;
int sum = a + b;
Console.WriteLine(sum);

//Functions
int Add(int a, int b)
{
    return a + b;
}

Console.WriteLine(Add(5, 10));

// Conditionals If-else
int number = 10;
if (number > 5)
{
    Console.WriteLine("Greater than 5");
}
else
{
    Console.WriteLine("5 or less");
}

// Loops
for (int i = 0; i < 5; i++)
{
    Console.WriteLine(i);
}

//Data Structures (Arrays/List)
int[] numbers = { 1, 2, 3, 4, 5 };
foreach (int number in numbers)
{
    Console.WriteLine(number);
}
