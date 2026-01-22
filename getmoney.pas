PROGRAM GetMoney(INPUT, OUTPUT);
{ Create a program to ask the user for SIZE # of dollars }
{ Sum up the values and print them out }
CONST
  SIZE = 10;
TYPE
  List = ARRAY[1..SIZE] of INTEGER;
VAR
  arr : List;
  i, sum : INTEGER;
BEGIN
  Writeln('How much money do you have?');
  FOR i := 1 TO SIZE DO
BEGIN
  Read(arr[i]);
  Writeln('arr[', i, '] = ', arr[i]);


  sum := 0;
  FOR i := 1 TO SIZE DO sum := sum + arr[i];

  Writeln('Your total cost is = ', sum);

  Read(arr[1]);
END;

END.