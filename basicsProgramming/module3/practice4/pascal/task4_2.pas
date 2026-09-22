program Task4_2;

uses InputUtils;

var n, avarage, count: integer;

begin

  avarage := 0;
  count := 0;

  repeat
    ReadOneInteger(
      'Введите число',
      'Ошибка: вводить разрешенно только числа',
      n
    );

    if (n > 0) and (not(n mod 2 = 0)) then
    begin
      avarage := avarage + n;
      count := count + 1;
    end;
  until n < 0;

  writeln('Среднее арифмитическое: ', (avarage / count):0:2);

end.
