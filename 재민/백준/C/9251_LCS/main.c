#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_STRING_LENGTH 1000
#define MAX(a, b) (a > b ? a : b)

int main()
{
    char str1[MAX_STRING_LENGTH] = "";
    char str2[MAX_STRING_LENGTH] = "";
    int str1Length = 0;
    int str2Length = 0;
    int** dp = NULL;

    scanf("%s", str1);
    scanf("%s", str2);
    
    str1Length = strlen(str1);
    str2Length = strlen(str2);
    
    dp = (int**)malloc(sizeof(int*) * (str1Length + 1));
    for(int i = 0; i <= str1Length; i++)
    {
        dp[i] = (int*)malloc(sizeof(int) * (str2Length + 1));
        
        dp[0][i] = 0;
        dp[i][0] = 0;
    }
    
    for(int i = 1; i <= str1Length; i++)
    {
        for(int j = 1; j <= str2Length; j++)
        {
            if(str1[i - 1] == str2[j - 1])
            {
                dp[i][j] = dp[i - 1][j - 1] + 1;
            }
            else
            {
                dp[i][j] = MAX(dp[i - 1][j], dp[i][j - 1]);
            }
        }
    }

    printf("%d", dp[str1Length][str2Length]);
}