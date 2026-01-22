PROGRAM testprefix;
USES csp;
VAR
  temps : STRING;
  i : INTEGER;
BEGIN
  Writeln('The first 3 letters of Murry is ', Prefix('Murry,',3));
  Writeln('The first 3 letters of the word apple is ', Prefix('apple,',3));
  Readln(i);
END.