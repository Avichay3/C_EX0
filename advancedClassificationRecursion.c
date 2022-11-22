#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include "NumClass.h"
//#define NumOfDigits(a) floor(log10(abs(a))) + 1

int isArmstrong(int x, int num)
{
    if (x >= 0)
    {
        return pow(x % 10, num) + isArmstrong(x / 10, num);
    }
}
/*int isPalindrome(int){

}
*/