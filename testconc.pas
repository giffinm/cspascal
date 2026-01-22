PROGRAM testconcat;
USES csp;
VAR
  s : STRING;

BEGIN
  Writeln(Concat('Giffin',  'Morey'));
  Writeln(Concat('Hello', 'world!'));
  Writeln(Concat('CSP', 'rules'));
  Writeln(Concat('Yes', 'No'));
  Readln(s);
END.