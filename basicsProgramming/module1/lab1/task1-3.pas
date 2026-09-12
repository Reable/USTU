program Task1_3;

const
    EPS = 1e-9; // Зона Златовласки (посередине)

var x, y, res: real;

begin
    writeln('Введите числа X и Y');

    {$I-}
    readln(x, y);
    {$I+}
    
    if IOResult <> 0 then
    begin
        writeln('Ошибка: введите вещественные числа');
        Halt(1);
    end;

    // Eps = 0.000000000000 мы проверяем что число очень похоже на это значение к примеру 0.0000000002
    if Abs(x - 1) < EPS then 
    begin
        writeln('Ошибка: вычисление невозможно');
        Halt(1);
    end;

    res := (x + 1) / (x - 1);

    // корень четной степени для отрицательного числа нет для 4-ой степени
    if res < 0 then
    begin
        writeln('Ошибка: вычисление невозможно');
        Halt(1);
    end;

    res := Sqrt(Sqrt(res)) + 18 * x * sqr(y);

    writeln('Результат = ', res);
end.