program Task1_1_1;

var
    x, a, y: Real;

begin
    writeln('Введите число X и число A: ');
    readln(x, a);

    y := (sqr(sin(x + Pi)) - 4) / (sqr(x) + sqr(a));
    writeln(y);
end.