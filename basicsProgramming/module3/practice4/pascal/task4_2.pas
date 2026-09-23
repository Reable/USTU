program Task4_2;

var n, avarage, count: integer;

begin

  avarage := 0;
  count := 0;

  repeat
    {$I-}
    writeln('Введите положительное целое число');
    readln(n);
    {$I+}

    if (n > 0) and (not(n mod 2 = 0)) then
    begin
      avarage := avarage + n;
      count := count + 1;
    end;
  until (IOResult <> 0) or (n < 0);

  writeln('Среднее арифмитическое: ', (avarage / count):0:2);
end.
