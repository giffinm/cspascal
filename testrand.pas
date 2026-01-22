PROGRAM TestRandom;
USES csp;
VAR
  n : INTEGER;
  myList : LIST;
BEGIN
  REPEAT
    Writeln('How many elements do you want in the list?');
    Readln(n);
    IF (n <= 0) OR (n > SIZE) THEN
      Writeln('That number isnt in range, try again.');
  UNTIL (n > 0) AND (n <= SIZE);
  RandomList(myList, n);
  PrintList(myList);
  Writeln('The largest number is ', Largest(myList));
  Writeln('The smallest number is ', Smallest(myList));
    Readln;
  Readln;
END.