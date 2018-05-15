#include <stdio.h>

void sleep(long);

void foobar(int i) {
    printf("Printing from Lib.so %d\n", i);
    sleep(10);
}
