program Task3_6;

uses InputUtils;

var 
    i, n, count:integer;
    elem: integer;

begin
    ReadOneInteger(
        'Введите число N',
        'Ошибка: число должно быть целым',
        n
    );

    count := 0;

    for i:=1 to n do
    begin
        ReadOneInteger(
            'Введите число',
            'Ошибка: число должно быть целым',
            elem
        );

        if (elem < 0) and (abs(elem) mod 10 = 7) then count := count + 1;
    end;

    writeln('Количество отрицательных чисел = ', count);
end.