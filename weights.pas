PROGRAM TeamWeights;
CONST
  MAXSIZE = 20;
TYPE
  List = ARRAY[1..MAXSIZE] OF REAL;
VAR
  weights : List;
  teamSize, i : INTEGER;
  average : REAL;

FUNCTION AverageWeights(weightList : List; num : INTEGER) : REAL;
  VAR
    sum : REAL;
BEGIN
  Write('How many players are on the team? ');
  Readln(teamSize);
  FOR i := 1 TO teamSize DO
  BEGIN
    Write('What is the weight of player #', i, ': ');
    Readln(weights[i]);
  END;
  FOR i := 1 TO teamSize DO
    Writeln(weights[i]);
  Readln(teamSize);

  sum := 0
  FOR i := 1 TO teamSize DO
    sum := sum + weights[i];
  average := sum/teamSize
  Writeln('The total sum of the teams weight is ', sum);
  Writeln('The average of all the teams weight is ', average);

END.
