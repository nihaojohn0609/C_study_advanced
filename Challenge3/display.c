#include <stdio.h>

extern int count;

extern void display() {
    printf("%d\n", count+1); 
}