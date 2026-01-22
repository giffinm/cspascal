PROGRAM AgeClassifier(Input, Output);
VAR
  age : INTEGER;
  class : CHAR;

PROCEDURE PrintClass(class : CHAR);
  BEGIN
  IF (Class = 'a') THEN
  Writeln('You are an adult');
  IF (Class = 't') THEN
  Writeln('You are a teenager');
  IF (Class = 'c') THEN
  Writeln('You are a child');
  END;

FUNCTION ClassifyAge(age : INTEGER) : CHAR;
  BEGIN
  IF age <= 12 THEN ClassifyAge := 'c';
  IF (age >= 13) AND (age <= 20) THEN ClassifyAge := 't';
  IF age >= 20 THEN ClassifyAge := 'a';
  END;

FUNCTION GetAge : INTEGER;
  VAR
    age : INTEGER;
  BEGIN
  REPEAT
  Write('Enter your age ');
  Read(age);
  IF (age < 0) OR (age > 120) THEN Writeln('That age is out of range');
  UNTIl (age >= 0) AND (age <= 120);
  GetAge := age;
  END;

BEGIN
  age := GetAge;
  class := ClassifyAge(age);
  PrintClass(class);
  Read(age);
END.