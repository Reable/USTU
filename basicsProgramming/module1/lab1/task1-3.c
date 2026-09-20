#include <stdio.h>
#include <math.h>

void task1_3()
{
    const double EPS = 1e-9;
    double x, y;

    printf("Введите число X: ");
    while (scanf("%lf", &x) != 1)
    {
        printf("Ошибка: Повторите ввод X: ");
        int c;
        while ((c = getchar()) != '\n' && c != EOF);
    }

    printf("Введите число Y: ");
    while (scanf("%lf", &y) != 1)
    {
        printf("Ошибка: Повторите ввод Y: ");
        int c;
        while ((c = getchar()) != '\n' && c != EOF);
    }

    if (fabs(x - 1) < EPS)
    {
        printf("Ошибка: вычисление невозможно");
        return;
    }

    double result = (x + 1) / (x - 1);
    if (result < 0)
    {
        printf("Ошибка: вычисление невозможно");
        return;
    }

    result = sqrt(sqrt(result)) + 18 * x * pow(y, 2);

    printf("Результат = %.4f", result);
}

int main()
{
    task1_3();

    return 0;
}
