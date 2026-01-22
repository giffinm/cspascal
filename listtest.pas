PROGRAM listtest;
USES csp;
VAR
  myList : LIST;
  i : INTEGER;
BEGIN
  Writeln('Length = ', Length(myList));
  Append(myList, 10);
  Append(myList, 3);
  Append(myList, 8);

  Writeln('Length = ', Length(myList));

  PrintList(myList);

  Readln(myList[1]);
END.

