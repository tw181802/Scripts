//I added an #include <iostream> directive to import the iostream header, which provides input/output functionality, including std::cout.
//I added a main function, which is the entry point for the program. This is where the program starts execution.
//I added a return 0 statement at the end of the main function to indicate successful execution.

//Arithmetic
#include <iostream>
int main() {
    int a = 5;
    int b = 10;
    int sum = a + b;
    std::cout << sum << std::endl;
    return 0;
}


// Functions
#include <iostream>

int Add(int a, int b)
{
    return a + b;
}

int main() {
    std::cout << Add(5, 10) << std::endl;
    return 0;
}
//Conditionals if-else
#include <iostream>

int main() {
    int number = 10;
    if (number > 5)
    {
        std::cout << "Greater than 5" << std::endl;
    }
    else
    {
        std::cout << "5 or less" << std::endl;
    }
    return 0;
}


// Loops
#include <iostream>

int main() {
    for (int i = 0; i < 5; i++)
    {
        std::cout << i << std::endl;
    }
    return 0;
}


//Data Structues (arrays/lists)
#include <iostream>

int main() {
    int numbers[] = {1, 2, 3, 4, 5};
    for (int i = 0; i < 5; i++)
    {
        std::cout << numbers[i] << std::endl;
    }
    return 0;
}
