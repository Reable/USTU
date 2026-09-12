program Task1_7_2;

var
    secondsAll: int64;
    h, m, s: integer;
begin
    writeln('Введите количество секунд');
    {$I-}
    readln(secondsAll);
    {$I+}

    if IOResult <> 0 then
    begin
        writeln('Ошибка: введите два целых числа.');
        Halt(1);
    end;

    h := (secondsAll div 3600) mod 24;
    m := (secondsAll mod 3600) div 60;
    s := secondsAll mod 60;

    writeln(h,':',m,':',s);
end.
