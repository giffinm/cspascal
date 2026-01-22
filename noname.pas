PROGRAM test;
USES csp;
VAR
  s : STRING;
BEGIN
  Writeln('Add3(1,2,3) = ', add3(1, 2, 3));
  Writeln('Add3(4,5,6) = ', add3(4, 5, 6));
  Readln(s);
END.