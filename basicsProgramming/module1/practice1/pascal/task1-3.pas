program Task1_3;

var
    n1, n2, n3, sum: Integer;
    avg: Real;

begin
    writeln('Введите целые числа');
    {$I-}
    readln(n1, n2, n3);
    {$I+}

    if IOResult <> 0 then
    begin
        writeln('Ошибка: введите целое значения');
        Halt(1);
    end;

    sum := n1 + n2 + n3;
    avg := sum / 3;

    WriteLn('Сумма чисел: ', sum);
    WriteLn('Среднее арифметическое: ', avg:0:6);
end.
