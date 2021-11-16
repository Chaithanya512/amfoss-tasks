#include <cs50.h>
#include <stdio.h>

int main(void)
{
    int n;
    do {
        n = get_int("Height: "); //to get height from user
       }
    while (n < 1 || n > 8);


    for(int i = 0; i < n; i++) //rows of mario blocks
    {
        for(int j = n-i-1; j > 0; j--) //spaces 
        {
        printf(" ");
        }

        for(int k = 0; k < i+1; k++) //columns
        {
        printf("#");
        }

        printf("\n");
    }




}