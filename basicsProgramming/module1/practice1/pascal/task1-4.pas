program Task1_4;

var
    num: integer;
    isValid: boolean;
    i, sumNums, compNums, reverseNum, modValue: integer;

begin
    writeln('Введите трехзначное число');
    {$I-}
    readln(num);
    {$I+}

    if IOResult <> 0 then
    begin
        writeln('Ошибка: введите целое и трехзначное число');
        Halt(1);
    end;

    isValid := (num >= 100) and (num <= 999);

    if not isValid then
    begin
        writeln('Ошибка: число не трехзначное');
        Halt(1);
    end;

    sumNums:= 0;
    compNums := 1;
    reverseNum := 0;

    for i := 1 to 3 do
    begin
        modValue := num mod 10;

        sumNums := sumNums + modValue;
        compNums := compNums * modValue;
        reverseNum := reverseNum * 10 + modValue;

        num := num div 10;
    end;

    writeln('Сумма чисел: ', sumNums);
    writeln('Произведение чисел: ', compNums);
    writeln('Перевернутое число: ', reverseNum);
end.