PROGRAM stats;
VAR
  myList : LIST;
  n : INTEGER;
BEGIN
  BubbleSort(myList);
  PrintList(myList);
  Writeln('The average = ', Average(myList):3:2);
  Writeln('What number are you looking for?');
  Readln(n);
  Writeln('LinearSearch');
  IF LinearSearch(myList, n) THEN
    Writeln('Found it');
  ELSE Writeln('Not there');
  Writeln('Binary search');
  IF
