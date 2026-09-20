program Task2_2;

var
    x, y, z: integer;

begin

    x := 99;
    y := 99;
    z := 99;

    {Example A}
    if (x = y) and (y = z) then
    begin
        writeln('Треугольник равнобедренный');
    end;

    {Example B}
    if ((x = y) and (y != z)) or ((y = z) and (z != x))  then
    begin
        writeln('Треугольник равностороний');
    end;

    {Example C}
    if (x <> y) and (y <> z) and (x <> z) then
    begin
        writeln('Числа не равны');
    end;

    {Example D}
    x = x mod 10;
    y = y mod 10;
    z = z mod 10;

    if x mod 2 = 0 then
    begin
        writeln('Последнее число x четное');
    end;

    if y mod 2 = 0 then
    begin
        writeln('Последнее число y четное');
    end;

    if z mod 2 = 0 then
    begin
        writeln('Последнее число z четное');
    end;

end.
