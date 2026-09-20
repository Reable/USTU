program Task2_13;

uses InputUtils;

var
    a, b, c, d, x: integer;

begin

    ReadFiveIntegers(
        'Введите целые числа A, B, C, D, X:',
        'Ошибка: введите все числа без дроби',
        a, b, c, d, x
    );

    if a = 0 then
    begin
        if b = 0 then
        writeln('INF')
        else
        writeln('NO');
    end
    else
    begin
        if b mod a = 0 then
        begin
            x := -b div a;
            if c * x + d <> 0 then
                writeln(x)
            else
                writeln('NO');
            end
        else
            writeln('NO');
    end;
end.
