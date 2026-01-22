PROGRAM strings;
VAR
  name, msg : STRING;
  len, i, count : INTEGER;
  money : REAL;
BEGIN
  Writeln('What is your name? ');
  Readln(name);
  msg := 'Hello ' + name + '. ';
  len := ord(msg[0]);
  Writeln('Your msg is ', len, ' long');
  msg := msg + ' It is nice to meet you.';
  len := ord(msg[0]);
  Writeln('Your msg is ', len, ' long');
  Writeln(msg);
  FOR i := 1 TO length(msg) DO
  BEGIN
    if (msg[i] >= 'A') AND (msg[i] <= 'Z') THEN count := count + 1;
  END;
  Writeln('There are ', count, ' uppercase letters in your message');
  Readln(name);
END.