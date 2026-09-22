program Task2_4;

uses InputUtils;

var a, b, count: integer;

begin

  ReadTwoIntegers(
    'Введите число A и B',
    'Ошибка: введите целые числа',
    a, b
  );

  count := 0;

  while (a <> 0) and (b <> 0) do
  begin
    if a > b
      then a := a mod b
      else b := b mod a;
    count := count + 1;
  end;

  if a <> 0
    then writeln('Ответ: ', a)
    else writeln('Ответ: ', b);

  writeln('Кол-во операций: ', count);
end.
