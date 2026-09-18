program Task2_8;

var a, b, c: Integer;

begin
    {$I-}
    write('Введите 3 числа: ');
    readLn(a, b, c);
    {$I+}

    if IOResult <> 0 then
    begin
        writeLn('Ошибка: введите три целых числа');
        Halt(1);
    end;

    if (a < b) and (a < c) then
        writeLn('Число a: ', a, ' минимальное')
    else if (b < a) and (b < c) then
        writeLn('Число b: ', b, ' минимальное')
    else
        writeLn('Число c: ', c, ' минимальное');

    if (a = b) or (a = c) or (b = c) then
        writeLn('Ошибка')
    else
    begin
        if ((a > b) and (a < c)) or ((a < b) and (a > c)) then
            writeLn('Среднее число = ', a)
        else if ((b > a) and (b < c)) or ((b < a) and (b > c)) then
            writeLn('Среднее число = ', b)
        else
            writeLn('Среднее число = ', c);
    end;
end.
