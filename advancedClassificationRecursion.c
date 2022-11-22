#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include "NumClass.h"
#define NumOfDigits(a) floor(log10(abs(a))) + 1

int isArmstrongRec(int x, int nDigits){
    if (x > 0)
    {
        return pow((x % 10), nDigits) + isArmstrongRec((x / 10), nDigits);
    }
}

int isArmstrong(int y){
    int Yarm = isArmstrongRec(Yarm, NumOfDigits(Yarm));
    if(y==Yarm)
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