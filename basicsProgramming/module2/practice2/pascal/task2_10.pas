program Task2_10;

uses
    InputUtils;

var
    x: real;
    n: Integer;

begin
    ReadOneReal(
        'Введите число X:',
        'Ошибка: введите число X',
        x
    );

    if x < 0 then
        writeln('f(x) = 0')
    else
    begin
        n := trunc(x);
        writeln(n);

        if n mod 2 = 0 
        then writeln('f(x) = 1')
        else writeln('f(x) = -1');
    end;
end.