/* main.c simple program to test assembler program */

#include <stdio.h>

extern long long int test(long long int a, long long int b);
extern long long int lab03b();
extern long long int lab03c();

int main(void)
{
    long long int a = test(3, 5);
    printf("Result of test(3, 5) = %ld\n", a);

    long long int b = lab03b();
    printf("Result of lab03b = %ld\n", b);

long long int c = lab03c();
    printf("Result of lab03c = %ld\n", c);
    return 0;
}
