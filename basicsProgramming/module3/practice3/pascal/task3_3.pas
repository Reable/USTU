program Task3_3;

var 
    i: longint;
    first, last: integer;
    a, b, c, d, f, count: integer;

begin
    
    writeln('------------------------- A -------------------------');
    for i := 100 to 999 do
    begin
        last := i mod 10;         
        first := i div 100;
        
        if (last = 3) or (last = 7) then
            if first = last then writeln(i);
    end;


    writeln('------------------------- B -------------------------');

    for i := 10000 to 99999 do
    begin
        a := i div 10000;
        b := (i div 1000) mod 10;
        c := (i div 100) mod 10;
        d := (i mod 10) mod 10;
        f := i mod 10;

        if c <> 0 then
        begin
            if(b = d) and ((a + f) mod c = 0) then 
            begin
                write(i:7);
                count := count + 1;
                if count mod 7 = 0 then writeln;
            end;
        end;
    end;
end.