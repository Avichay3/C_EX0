#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include "NumClass.h"
#define NumOfDigits(a) floor(log10(abs(a))) + 1
int flag = 1;
int number = 0;

int NumOfDigit(int num)
{
    if (flag == 1)
    {
        number = NumOfDigits(num);
        flag = 0;
    }
    return number;
}
int isArmstrong(int x)
{
    if (x > 0)
    {
        return pow(x % 10, NumOfDigit(x)) + isArmstrong(x / 10);
    }
}
/*int isPalindrome(int){

}
*/