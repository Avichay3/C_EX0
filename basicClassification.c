#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include "NumClass.h"

int fact(int n)
{
    if (n == 0)
    {
        return 1;
    }
    return n * fact(n - 1);
}

int isPrime(int x)
{
    for (int i = 2; i < sqrt(x); i++)
    {
        if (x % i == 0)
        {
            return 0;
        }
        else
        {
            return 1;
        }
    }
}

int isStrong(int a)
{
    int count = a;
    int sum = 0;
    for (int i = 0; i < floor(log10(abs(a))) + 1; i++)
    {
        sum += fact(count % 10);
        count = count / 10;
    }
    if (sum == a)
    {
        return 0;
    }
    else
    {
        return 1;
    }
}