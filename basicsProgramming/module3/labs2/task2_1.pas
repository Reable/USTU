program Task2_1;

uses InputUtils;

var a, b, count: integer;

begin

  ReadTwoIntegers(
    'Введите число A и B',
    'Ошибка: введите целые числа',
    a, b
  );
  count := 0;

  while a <> b do
  begin
    if a > b
      then a := a - b
      else b := b - a;
    count := count + 1;
  end;

  writeln('Ответ: ', b);
  writeln('Кол-во операций: ', count);
end.
