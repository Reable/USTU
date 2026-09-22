program Task4_3;

var n: int64; count: integer;

begin

  count := 0;

  repeat
    {$I-}
    writeln('Введите целое число');
    readln(n);
    {$I+}
  until IOResult = 0;

  while n <> 0 do
  begin
    if (n mod 10) mod 2 = 0
      then count := count + 1;
    n := n div 10;
  end;

  writeln('Количество четных цифр: ', count);
end.
