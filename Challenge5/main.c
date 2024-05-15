#include <stdio.h>
#include <malloc.h>

struct myArray {
   int len;
   int array[];
};

int main() {
    struct myArray *p = NULL;
    int arraySize = 0;
    
    printf("Enter the size of the flexible array: \n");
    scanf("%d", &arraySize);
    
    size_t size = sizeof(struct myArray);
    p = malloc(size + (arraySize * sizeof(int)));
    
    p -> len = arraySize;
    p -> array[0] = 55;
    p -> array[1] = 199;
    
    printf("array is: %d:%d\n", p -> array[0], p -> array[1]);
    
	return 0;
}