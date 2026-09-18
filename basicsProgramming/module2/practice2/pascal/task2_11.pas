program Task2_11;

uses InputUtils;

var n: integer;

begin
    ReadOneIntegers(
        'Введите количество коров на лугу',
        'Ошибка: введите целове число коров',
        n
    );

    if (n >= 10) and (n <= 20) then
        writeln('На лугу пасется ', n, ' коров')
    else
    begin
        case n mod 10 of
            1: writeln('На лугу пасется ', n, ' корова');
            2, 3, 4: writeln('На лугу пасется ', n, ' коровы')
            else writeln('На лугу пасется ', n, ' коров');
        end;
    end;
end.