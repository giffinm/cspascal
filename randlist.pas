PROGRAM Randlist;
USES csp;
VAR
  myList : LIST;
  i, n : INTEGER;
BEGIN
  Randomize;
  Writeln('How many elements do you want in your list?');
  n := 10;

  IF n > SIZE THEN n := SIZE;

  FOR i := 1 TO n DO
    Append(myList, Random(5));

  PrintList(myList);
  IF IsInList(myList, 3) THEN Writeln('3 is in there')
  ELSE Writeln('3 is not in there');
  Readln;
END.