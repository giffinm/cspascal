PROGRAM testreverse;
USES csp;
VAR
  s : STRING;

BEGIN
  Writeln('tim in reverse is ', Reverse('tim'));
  Writeln('Murry in reverse is ', Reverse('Murry'));
  Readln(s);
END.