#include <stdio.h>

void task1_3()
{
    int n1, n2, n3;
    long long sum;
    float avg;

    printf("Введите 3 целых числа ");
    
    if(scanf("%d %d %d", &n1, &n2, &n3) != 3){
        printf("Введите 3 целых числа");
        return;
    }

    sum = (long long)n1 + n2 + n3;
    avg = sum / 3.0;

    printf("Сумма чисел = %lld\n", sum);
    printf("Среднее арифметическое = %.2f", avg);
}

int main()
{
    task1_3();
    return 0;
}
