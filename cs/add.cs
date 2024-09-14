//I added a using System; directive to import the System namespace, which provides the Console class.
//I wrapped the code in a class Program block, which is the standard way to define a C# program.
//I added the static void Main(string[] args) method, which is the entry point for the program. This is where the program starts execution.


//Arithmetic
using System;
class Program
{
    static void Main(string[] args)
    {
        int a = 5;
        int b = 10;
        int sum = a + b;
        Console.WriteLine(sum);
    }
}

//Functions 
using System;
class Program
{
    static int Add(int a, int b)
    {
        return a + b;
    }

    static void Main(string[] args)
    {
        Console.WriteLine(Add(5, 10));
    }
}

// Conditionals If-else
using System;
class Program
{
    static void Main(string[] args)
    {
        int number = 10;
        if (number > 5)
        {
            Console.WriteLine("Greater than 5");
        }
        else
        {
            Console.WriteLine("5 or less");
        }
    }
}

// Loops
using System;
class Program
{
    static void Main(string[] args)
    {
        for (int i = 0; i < 5; i++)
        {
            Console.WriteLine(i);
        }
    }
}

//Data Structures (Arrays/List)
using System;
class Program
{
    static void Main(string[] args)
    {
        int[] numbers = { 1, 2, 3, 4, 5 };
        foreach (int number in numbers)
        {
            Console.WriteLine(number);
        }
    }
}
