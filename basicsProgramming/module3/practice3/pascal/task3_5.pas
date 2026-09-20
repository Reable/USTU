program Task3_5;

uses InputUtils;

var
    i, n:integer;
    s: longint;

begin
    ReadOneInteger(
        'Введите число N',
        'Ошибка: число должно быть целым',
        n
    );

    s:=0;
    for i:=1 to n do
    begin
        if not (i mod 2 = 0) then s += i;
    end;
    writeln('Сумма нечетных чисел = ',s)
end.
