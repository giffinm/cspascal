PROGRAM concattest;
USES csp;
VAR
  s : STRING;
BEGIN
  Writeln(Concat('Giffin ', 'Morey'));
  Writeln(Concat('Hello ', 'World!'));
  Writeln(Concat('Mcintosh ', 'High School'));
  Readln(s);
END.