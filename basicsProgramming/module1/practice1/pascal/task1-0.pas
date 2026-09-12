program Task1_0;
var
    a: real;
    b, c: integer;

begin
    a := 20.79;
    b := trunc(a);
    c := round(a);

    writeln('a = ', b);
    writeln('a = ', c);
end.