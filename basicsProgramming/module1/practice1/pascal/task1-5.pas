program Task1_4;

var x, y, distance: Integer;

begin
    writeln('Напишите координаты x и y');
    {$I-}
    readln(x, y);
    {$I+}

    if IOResult <> 0 then
    begin
        writeln('Ошибка: введите два целых числа.');
        Halt(1);
    end;

    if x > y then distance := x - y
    else distance := y - x;

    WriteLn('Расстояние между точками: ', distance);
end.
