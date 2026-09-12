#include <stdio.h>
#include <stdbool.h>

void task1_7()
{
    int seconds, h, m, s;

    printf("Введите количество секунд ");

    while(true)
    {
        if(scanf("%d", &seconds) != 1){
            printf("Введите коректное число секунд, пример - (56789)\n");
            continue;
        }
        break;
    }

    h = (seconds / 3600) % 24;
    m = (seconds % 3600) / 60;
    s = seconds % 60;

    printf("%d:%d:%d", h, m, s);
}

int main()
{
    task1_7();
    return 0;
}