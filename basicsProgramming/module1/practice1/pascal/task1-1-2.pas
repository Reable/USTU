program Task1_1_2;

var
    x, y, z: Real;

begin
    writeln('Введите число X и Y: ');
    readln(x, y);

    z := y + sqrt(abs(cos(x) - 4)) / (ln(x) - 1);
    writeln(z);
end.