PROGRAM test;
USES csp;
VAR
  myList : LIST;
BEGIN
  Append(myList, 5);
  Append(myList, 10);
  Append(myList, 15);
  Append(myList, 21);
  Remove(myList, 3);
  Insert(myList, 4, 20);
  PrintList(myList);
  Readln;
END;

BEGIN
