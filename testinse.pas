PROGRAM testlist;
USES csp;
VAR
  myList : List;
BEGIN
  Append(myList, 8);
  Append(myList, 10);
  Append(myList, 12);
  Remove(myList, 3);
  Insert(myList, 4, 3);
  PrintList(myList);
  Writeln('The sum of the list is ', sum(myList));
  Writeln('The average of the list is ', average(myList));
  readln;
END.