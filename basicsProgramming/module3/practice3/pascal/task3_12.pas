program Task3_12;

uses InputUtils;

var
    i, n, x: integer;
    S, factorial, factorialTemp: Double;
    Y, temp: int64;

begin
    writeln('------------------------- A -------------------------');

    ReadOneInteger(
        'Введите число N',
        'Ошибка: число должно быть целым',
        n
    );

    Y := 0;
    temp := 1;

    for i := 1 to n do
    begin
        temp := temp * i;
        Y := Y + temp;
    end;

    writeln('Y = ', Y);

    writeln('------------------------- B -------------------------');

    ReadOneInteger(
        'Введите число X',
        'Ошибка: число должно быть целым',
        x
    );

    Y := 0;

    for i := 11 downto 1 do
    begin
        temp := 1;

        for n := 1 to i - 1 do
        begin
            temp := temp * x;
        end;

        Y := Y + (i * temp);
    end;

    writeln('Y = ', Y);

    writeln('------------------------- C -------------------------');

    ReadOneInteger(
        'Введите число X',
        'Ошибка: число должно быть целым',
        x
    );

    factorial := 1;
    factorialTemp := 1;
    S := 0;

    for i := 1 to 15 do
    begin
        factorial := factorial * i;
        factorialTemp := round(factorial * (i + 1));
        S := S + ( (x - i) * (x + (i + 1) )) / (factorial * factorialTemp);
    end;

    writeln('S = ', S:0:5);
end.
