program Task4_3;

uses InputUtils;

var
  n, q, last, max: integer;
  symbols, result: string;

begin
  ReadTwoIntegers(
    'Введите число и систему счисления в которое его перевести',
    'Ошибка: введите целые числа',
    n, q
  );

  symbols := '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';

  result := '';
  max := 0;

  while n > 0 do
  begin
    last := n mod q;

    if last + 1 > max then max := last + 1;

    result := symbols[last + 1] + result;

    n := n div q;
  end;

  writeln('Число в q = ', q,' = ', result);
  writeln('Максимальное число: ', symbols[max]);
end.
