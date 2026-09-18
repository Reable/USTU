unit InputUtils;

interface

procedure CheckInput(errorMessage: string);

procedure ReadOneInteger(text, errorMessage: string; var num1: integer);
procedure ReadTwoIntegers(text, errorMessage: string; var num1, num2: integer);
procedure ReadThreeIntegers(text, errorMessage: string; var num1, num2, num3: integer);
procedure ReadFiveIntegers(text, errorMessage: string; var num1, num2, num3, num4, num5: integer);

procedure ReadOneReal(text, errorMessage: string; var num1: real);
procedure ReadTwoReals(text, errorMessage: string; var num1, num2: real);
procedure ReadThreeReals(text, errorMessage: string; var num1, num2, num3: real);

procedure ReadOneString(text, errorMessage: string; var string1: string);
procedure ReadTwoStrings(text, errorMessage: string; var string1, string2: string);
procedure ReadThreeStrings(text, errorMessage: string; var string1, string2, string3: string);

implementation

procedure CheckInput(errorMessage: string);
begin
    if IOResult <> 0 then
    begin
        writeln(errorMessage);
        Halt(1);
    end;
end;

procedure ReadOneInteger(
    text, errorMessage: string;
    var num1: integer
);
begin
    {$I-}
    writeln(text);
    readln(num1);
    {$I+}

    CheckInput(errorMessage);
end;


procedure ReadTwoIntegers(
    text, errorMessage: string;
    var num1, num2: integer
);
begin
    {$I-}
    writeln(text);
    readln(num1, num2);
    {$I+}

    CheckInput(errorMessage);
end;


procedure ReadThreeIntegers(
    text, errorMessage: string;
    var num1, num2, num3: integer
);
begin
    {$I-}
    writeln(text);
    readln(num1, num2, num3);
    {$I+}

    CheckInput(errorMessage);
end;

procedure ReadFiveIntegers(
    text, errorMessage: string;
    var num1, num2, num3, num4, num5: integer
);
begin
    {$I-}
    writeln(text);
    readln(num1, num2, num3, num4, num5);
    {$I+}

    CheckInput(errorMessage);
end;


procedure ReadOneReal(
    text, errorMessage: string;
    var num1: real
);
begin
    {$I-}
    writeln(text);
    readln(num1);
    {$I+}

    CheckInput(errorMessage);
end;


procedure ReadTwoReals(
    text, errorMessage: string;
    var num1, num2: real
);
begin
    {$I-}
    writeln(text);
    readln(num1, num2);
    {$I+}

    CheckInput(errorMessage);
end;


procedure ReadThreeReals(
    text, errorMessage: string;
    var num1, num2, num3: real
);
begin
    {$I-}
    writeln(text);
    readln(num1, num2, num3);
    {$I+}

    CheckInput(errorMessage);
end;


procedure ReadOneString(
    text, errorMessage: string;
    var string1: string
);
begin
    {$I-}
    writeln(text);
    readln(string1);
    {$I+}

    CheckInput(errorMessage);
end;


procedure ReadTwoStrings(
    text, errorMessage: string;
    var string1, string2: string
);
begin
    {$I-}
    writeln(text);
    readln(string1, string2);
    {$I+}

    CheckInput(errorMessage);
end;


procedure ReadThreeStrings(
    text, errorMessage: string;
    var string1, string2, string3: string
);
begin
    {$I-}
    writeln(text);
    readln(string1, string2, string3);
    {$I+}

    CheckInput(errorMessage);
end;


end.