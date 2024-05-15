#include <stdio.h>

#define SUM(x, y) (x + y)

int main()
{
	int num1 = 0;
    int num2 = 0;
    
    //Input two numbers from user
    printf("Enter any two numbers: ");
    scanf("%d%d", &num1, &num2);
    
    // Calculate and print sum using macro
    printf("Sum(%d, %d) = %d\n", num1, num2, SUM(num1, num2));
    
	return 0;
}
