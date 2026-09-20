program Task2_15;

uses InputUtils;

var
    n, m, k, temp: integer;

begin
    ReadThreeIntegers(
        'Введите количество детей, кол-во взрослых и количество мест в автобусе:',
        'Ошибка: введите целые числа',
        n, m, k
    );

    if (n > 0) and (k <= 2) then
    begin
        writeln('Слишком мало мест в автобусе');
        Halt(0);
    end;

    if n = 0 then
    begin
        if m mod k = 0
        then writeln('Минимальное количество автобусов = ', m div k)
        else writeln('Минимальное количество автобусов = ', m div k + 1);
    end
    else if (n > 0) and (m < 2)
        then writeln('Для поездки вам не хватает взрослых')
    else
    begin
        if n mod (k - 2) = 0
        then temp := n div (k - 2)
        else temp := n div (k - 2) + 1;

        if m < 2 * temp then
        begin
            writeln('Для организации поездки необходимо больше взрослых');
        end
        else
        begin
            temp := n + m;
            if temp mod k = 0 then
                temp := temp div k
            else
                temp := temp div k + 1;
            writeln('Необходимо ', temp, ' автобусов');
        end;
    end;
end.
