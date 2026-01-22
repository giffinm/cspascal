PROGRAM FindMedian;
USES csp;
VAR
  myList : LIST;
  n : INTEGER;

FUNCTION Median(aList : LIST) : REAL;
VAR
  med : REAL;
  n, m : INTEGER;
  j : INTEGER;
BEGIN
  BubbleSort(aList);
  IF Length(aList) MOD 2 = 0 THEN
    BEGIN
     n := aList[Length(aList) DIV 2];
     m := aList[(Length(aList) DIV 2) + 1];
     med := (n + m) / 2;
    END
  ELSE
    BEGIN
      j := aList[(Length(aList) DIV 2) + 1];
      med := j;
    END;
  Median := med;
END;



BEGIN
  REPEAT
  Writeln('How many random items do you want?');
  Readln(n);
  IF (n <= 0) OR (n > SIZE) THEN
    Writeln('Your number should be positive and less than ', SIZE);
  UNTIL (n > 0) AND (n <= SIZE);
  RandomList(myList, n);
  PrintList(myList);
  Writeln('Average of myList = ', Average(myList):3:2);
  Writeln('The median of the list is ', median(myList):3:2);
  BubbleSort(myList);
  PrintList(myList);
  Readln;
END.