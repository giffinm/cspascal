PROGRAM Conditionals;
LABEL 10;
VAR
  a, b, i : INTEGER;
BEGIN
  Randomize;
  b := Random(10);
  Write('You have 3 guesses');

  REPEAT
    Write(' Guess a number between 0 and 10: ');
    Readln(a);
    IF a < b THEN Writeln('Too low')
    ELSE IF a > b THEN Writeln('Too high')
    ELSE
    BEGIN
      Writeln('That is correct');
      GOTO 10;
    END;
  UNTIL a = b;
10: Writeln('Thanks for playing.');
  Readln(a);
END.