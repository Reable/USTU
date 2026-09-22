program Task4_11;

var n, last: integer;

begin

  last := 0;
  n := 0;

  repeat
    last := n;

    {$I-}
    writeln('Введите целое число');
    readln(n);
    {$I+}
  until n < last;

  writeln('последовательность заканчивается числом: ', last);
end.
