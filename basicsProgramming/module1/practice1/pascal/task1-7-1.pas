program Task1_7_1;

uses SysUtils;

var h, m, s, ms: Word;
begin
    DecodeTime(Now, h, m, s, ms);
    writeln(h,':',m,':',s);
end.