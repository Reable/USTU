program Task3_9;

uses InputUtils;

var 
    i, n, elem, count: integer;
    sum: longint;
    average: real;

begin
    ReadOneInteger(
        'Введите число N',
        'Ошибка: число должно быть целым',
        n
    );

    count := 0;
    sum := 0;

    for i := 1 to n do
    begin
        ReadOneInteger(
            'Введите число',
            'Ошибка: число должно быть целым',
            elem
        );

        if abs(elem) mod 10 = 6 then
        begin
            count := count + 1;
            sum := sum + elem;
        end;
    end;

    if count = 0 then
        writeln('Ошибка: нет чисел заканчивающихся на 6')
    else
    begin
        average := sum / count;
        writeln('Среднее арифметическое = ', average:0:2);
    end;
end.