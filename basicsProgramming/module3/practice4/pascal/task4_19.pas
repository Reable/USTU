program Task4_19;

var
  i, len: integer;
  n, sum, count, maxSum, sumHistory: int64;

function SumNumber(number: int64): integer;
var
  sum: integer;

begin
  sum := 0;

  if number < 0 then number := abs(number);

  while number > 0 do
  begin
    sum  := sum + (number mod 10);
    number := number div 10;
  end;

  SumNumber := sum;
end;

begin
  writeln('Введите длину последовательности');
  {$I-}
  readln(len);
  {$I+}

  if IOResult <> 0 then
  begin
    writeln('Ошибка: введите целое число длины последовательности');
    Halt(1);
  end;

  sum := 0;

  for i := 1 to len do
  begin
    {$I-}
    writeln('Введите целое число');
    readln(n);
    {$I+}

    if n = 0 then
      break;

    if IOResult = 0 then
    begin
      sum := SumNumber(n);

      if sum > maxSum then
      begin
        sumHistory := n;
        maxSum := sum;
        count := 1
      end
      else if sum = maxSum then count += 1;
    end;
  end;

  writeln('Максимальная сумма цифр: ', maxSum, ' Число: ', sumHistory);
  writeln('Встретилась раз: ', count);
end.
