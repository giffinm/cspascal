PROGRAM testsubstring;
USES csp;
VAR
  i : INTEGER;
  temps : STRING;
BEGIN
  Writeln('2-4 letter of apple is ', Substring('apple', 2, 4));
  Writeln('2-3 letter of hello is ', Substring('hello', 2, 3));
  Writeln('1-4 letter of hello is ', Substring('hello', 1, 3));
  Readln(i);
END.