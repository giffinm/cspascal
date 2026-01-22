PROGRAM binary;
VAR
  i, n : INTEGER;
  w : WORD; { 0 to 2^16-1 }
FUNCTION IntToBinary(m : INTEGER) : STRING;
  VAR
    result : STRING;
  BEGIN
    IF n = 0 THEN result := '0'
    ELSE
    BEGIN
      result := '';
      WHILE n > 0 DO
        BEGIN
        result := Chr(Ord('0') + (n MOD 2)) + result;
        n := n DIV 2;
        END;
       IntToBinary := result;
    END;
  END;

FUNCTION StrToInt(s : STRING) : WORD;
  VAR
    w, i : WORD;
  BEGIN
    i := 32768;
    w := 0;
    WHILE s <> '' DO
    BEGIN
      IF
    END;

  END;

BEGIN
  i := 1;
  w := 1;
  WHILE i <> 0 DO
  BEGIN
    Writeln(i, ' = ', IntToBinary(i));
    i := i + 1;
  END;
  Readln;

  WHILE w > 0 DO
  BEGIN
    Writeln(w, ' = ', IntToBinary(w));
    w := 2*w;
  END;
  Writeln(w);
  Readln;
END.