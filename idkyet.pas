PROGRAM CalcAvg(input, output);
CONST
  MAXGRADES = 20;
TYPE
  List = ARRAY[1..MAXGRADES] OF REAL;
VAR
  GetAssingmentNum : INTEGER;
  average, sum : REAL;
  GradeNum : INTEGER;
  i, num : INTEGER;
  grades : LIST;
  letter : CHAR;

BEGIN
  REPEAT
  Write('How many assingments do you have? ');
  Readln(GradeNum);
  IF (GradeNum < 1) OR (GradeNum > MAXGRADES) THEN
    Writeln('Try again');
  UNTIL (GradeNum >= 1) AND (GradeNum <= MAXGRADES);
  GetAssingmentNum := num;
  END.

FUNCTION CalcAverage(gradeList : List, num : INTEGER) : REAL;
  VAR
    sum : REAL
    i : INTEGER;
  BEGIN
    sum := 0;
    FOR i := 1 TO num DO sum := sum + gradeList[i];
    CalcAverage := sum/num
    IF average >= 89.5 THEN ClassifyGrade := 'A';
   ELSE IF average >= 79.5 THEN ClassifyGrade := 'B';
   ELSE IF average >= 69.5 THEN ClassifyGrade := 'C';
   ELSE IF average >= 68.5 THEN ClassifyGrade := 'D';
   ELSE ClassifyGrade := 'F';
  END;

BEGIN
  GradeNum := GetAssingmentNum;

  FOR i := 1 TO GradeNum DO
  BEGIN
    Writeln('What is the grade for assingment #', i, '? ');
    Readln(grades[i]);
  END;

  average := CalcAverage(grades, GradeNum);
  letter := ClassifyGrade(average);

  Writeln('The average grade for your assingments is ', average);
  Writeln('Your letter grade is ', letter);
  Readln(i);
END.
