#include <stdio.h>
#include <stdbool.h>

void clearBuffer(){
    int c;
    while ((c = getchar()) != '\n' && c != EOF);
}

void task1_4()
{
    int num, sum = 0, reverse = 0, composition = 1, modValue;
    bool isValid = false;

    while(!isValid){
        printf("Введите целое трехзначное число ");

        if(scanf("%d", &num) != 1){
            printf("Ошибка: введите целое трехзначное число \n");
            clearBuffer();
            continue;
        }

        isValid = (num >= 100 && num <= 999) || (num >= -999 && num <= -100);

        if(!isValid){
            printf("Ошибка: число не трехзначное \n");
            continue;
        }
    }

    for (int i = 0; i < 3; i++)
    {
        modValue = num % 10;

        sum += modValue;
        composition *= modValue;
        reverse = reverse * 10 + modValue;

        num = num / 10;
    }
    
    printf("Сумма чисел = %d\n", sum);
    printf("Произведение чисел = %d\n", composition);
    printf("Переворот числа = %d\n", reverse);
}

int main()
{
    task1_4();
    return 0;
}
