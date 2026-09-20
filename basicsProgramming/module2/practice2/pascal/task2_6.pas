program Task2_6;

var
    x, y: real;

begin
    {$I-}
    write('Введите координату X и Y: ');
    readln(&x, &y);
    {$I+}

    if IOResult <> 0 then
    begin
        writeln('Ошибка введите корректные значения');
        Halt(1);
    end;

    if (x = 0) or (y = 0) then
        writeln('Точка лежит на оси (не в четверти)')
    else
        begin
            if y > 0 then
            begin
                if x > 0
                then writeln('I четверть')
                else writeln('II четверть')
            end
            else
            begin
                if x < 0
                then writeln('III четверть')
                else writeln('IV четверть')
            end
        end;
end.
