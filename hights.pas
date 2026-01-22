PROGRAM softballHeights(input, output);
CONST
  MAXTEAM = 22;
TYPE
  List = ARRAY[1..MAXTEAM] OF INTEGER;
VAR
  heights : List;
  teamNum : INTEGER;
  average : REAL;
  sum, i : INTEGER;
FUNCTION AverageHeight(heightList : List) : REAL;
  VAR sum, i : INTEGER;
  BEGIN

  END;

BEGIN
  Write('How many players are on the team? ');
  Readln(teamNum);
  FOR i := 1 TO teamNum DO
  BEGIN
    Writeln('What is the height of player #', i, ' height: ');
    Readln(heights[i]);
  END;
  FOR i := 1 TO teamNum DO Writeln('heights[', i, '] = ', heights[i]);
   sum := 0;
  FOR i := 1 TO teamNum DO sum := sum + heights[i];
  average := sum/teamNum;
  Writeln('The average height of the team is ', average);
  Readln(average);
END.