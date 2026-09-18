program Task3_7;

uses InputUtils;

var 
    i, n:integer;

begin
    ReadOneInteger(
        'Введите число N в диапазоне от 1 до 9',
        'Ошибка: число должно быть целым',
        n
    );

    if (n < 1) or (n > 9) then
    begin
        writeln('Число выходит с диапазона 1..9');
        Halt(1);
    end;


    for i := 1 to n do write('+     ');
    writeln;
    for i := 1 to n do write('|---- ');
    writeln;
    for i := 1 to n do write('|',i,'  / ');
    writeln;
    for i := 1 to n do write('|   \ ');
    writeln;
    for i := 1 to n do write('|---- ');
    writeln;
    for i := 1 to n do write('|     ');
    writeln;

end.