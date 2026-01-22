PROGRAM loops;
VAR
  num : INTEGER;
  sum : INTEGER;
  i   : INTEGER;
  times : INTEGER;

FUNCTION GetNum : INTEGER;
  VAR num : INTEGER;

  FUNCTION Valid(n : INTEGER) : BOOLEAN;
  BEGIN
    Valid := (n >= 0) AND (num <= 100);
  END;

BEGIN
  REPEAT
  Writeln('Enter a number between 0 and 100');
  Read(num);
  IF NOT Valid(num) THEN Writeln('Try again');
  UNTIL Valid(num);
  GetNum := num;
END;

BEGIN
  Writeln('How many numbers do you want? ');
  Read(times);
  sum := 0;
  FOR i := 1 TO times DO
  BEGIN
    num := GetNum;
    sum := num + sum;
    Writeln(sum);
  END;
  Writeln('Average = ', sum/times);
  Read(num);
END.