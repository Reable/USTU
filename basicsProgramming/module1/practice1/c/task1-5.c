#include <stdio.h>
#include <stdbool.h>

void clearBuffer(){
    int c;
    while(c = getchar() != '\n' && c != EOF);
}

void task1_5()
{
    float x, y, distance;

    printf("Введите точки на оси X и Y ");

    while(true){
        if(scanf("%f %f", &x, &y) != 2){
            printf("Введите корректные координаты X Y\n");
            clearBuffer();
            
            continue;
        }

        break;
    }

    if(x > y) distance = x - y;
    else distance = y - x;

    printf("Дистанция между точками = %.2f", distance);
}

int main(){
    task1_5();
    return 0;
}