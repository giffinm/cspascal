PROGRAM GradeClassifier(Input, Output);
VAR
  Grade : INTEGER;
  LetterGrade : CHAR;

PROCEDURE PrintLetterGrade(LetterGrade : CHAR);
  BEGIN
  IF (LetterGrade = 'A') THEN
  Writeln('Your Grade is an A!');
  IF (LetterGrade = 'B') THEN
  Writeln('Your Grade is a B!');
  IF (LetterGrade = 'C') THEN
  Writeln('Your Grade is a C');
  IF (LetterGrade = 'D') THEN
  Writeln('oh no, your grade is a D');
  IF (LetterGrade = 'F') THEN
  Writeln('Thats not good, your grade is an F..');
  END;

FUNCTION ClassifyGrade(Grade : INTEGER) : CHAR;
  BEGIN
  IF Grade = -1 THEN ClassifyGrade := 'i';
  IF (Grade <= 100) AND (Grade >= 90) THEN ClassifyGrade := 'A';
  IF (Grade <= 89) AND (Grade >= 80) THEN ClassifyGrade := 'B';
  IF (Grade <= 79) AND (Grade >= 70) THEN ClassifyGrade := 'C';
  IF (Grade <= 69) AND (Grade >= 60) THEN ClassifyGrade := 'D';
  IF (Grade <= 59) AND (Grade >= 0) THEN ClassifyGrade := 'F';
  END;

FUNCTION GetGrade : INTEGER;
  VAR
    Grade : INTEGER;
    BEGIN
    REPEAT
    Write('Enter your grade ');
    Read(Grade);
    IF (Grade < 0) OR (Grade > 100) THEN Writeln('That is not a real grade, try again');
    UNTIL (Grade >= 0) AND (Grade <= 100);
    GetGrade := Grade;
    END;

BEGIN
REPEAT
  Grade := GetGrade;
  LetterGrade := ClassifyGrade(Grade);
  PrintLetterGrade(LetterGrade);
  UNTIL LetterGrade = 'i';
  Read(Grade);
END.