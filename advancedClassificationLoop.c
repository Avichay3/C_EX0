#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include "NumClass.h"

int isArmstrong(int a)
{
    int nDigits = floor(log10(abs(a))) + 1;
    int sum = 0;
    int num = a;
    int mod = num;
    for (int i = 0; i < nDigits; i++)
    {
        mod = num % 10;
        num = num / 10;
        sum += pow(mod, nDigits);
    }
    if (sum == a)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

int isPalindrome(int){
    return 0;
}