UNIT csp;

INTERFACE

{ List Data Type }
CONST
  SIZE = 20;
TYPE
  LIST = ARRAY[0..SIZE] OF INTEGER;

{ List Functions/Procedures }
FUNCTION Length(aList : LIST) : INTEGER;
PROCEDURE Append(VAR aList : LIST; value : INTEGER);
PROCEDURE Insert(VAR aList : LIST; i, value : INTEGER);
PROCEDURE Remove(VAR aList : LIST; i : INTEGER);
PROCEDURE PrintList(aList : LIST);
PROCEDURE RandomList(VAR aList : LIST; n : INTEGER);
FUNCTION Sum(aList : LIST) : INTEGER;
FUNCTION LinearSearch(aList : LIST; value : INTEGER) : BOOLEAN;
FUNCTION BinarySearch(aList : LIST; value : INTEGER) : BOOLEAN;
FUNCTION Average(aList : LIST) : REAL;
FUNCTION Median(aList : LIST) : REAL;
PROCEDURE BubbleSort(VAR aList : LIST);
FUNCTION Smallest(aList : LIST) : INTEGER;
FUNCTION Largest(aList : LIST) : INTEGER;
{ PROCEDURE SelectionSort(VAR aList : LIST);
PROCEDURE InsertionSort(VAR aList : LIST); }

{ String Functions }
FUNCTION Len(s : STRING) : INTEGER;
FUNCTION Concat(s1, s2 : STRING) : STRING;
FUNCTION Reverse(s : STRING) : STRING;
FUNCTION Prefix(s : STRING; n : INTEGER) : STRING;
FUNCTION Substring(s : STRING; start, n : INTEGER) : STRING;
FUNCTION IsInList(aList : LIST; val : INTEGER) : BOOLEAN;

{  Randomize  }
{  FOR loop from 1 TO n }
{    Append(aList, Random() }


IMPLEMENTATION

{ List Functions/Procedures }
FUNCTION Length(aList : LIST) : INTEGER;
  BEGIN
    Length := aList[0];
  END;

PROCEDURE Append(VAR aList : LIST; value : INTEGER);
  BEGIN
    aList[0] := Length(aList) + 1;
    aList[Length(aList)] := value;
  END;

PROCEDURE Insert(VAR aList : LIST; i, value : INTEGER);
  VAR
    index : INTEGER;
  BEGIN
    IF i > Length(aList) THEN Append(aList, i)
    ELSE
     BEGIN
      aList[0] := Length(aList) + 1;
      FOR index := Length(aList) DOWNTO i DO
        aList[index - 1] := aList[i];
      aList[i] := value;
     END
  END;

PROCEDURE Remove(VAR aList : LIST; i : INTEGER);
  VAR
    n : INTEGER;
  BEGIN
    IF (i > 0) AND (i <= Length(aList)) THEN
    BEGIN
      FOR n := i TO Length(aList) DO
        aList[n] := aList[n + 1];
      aList[0] := Length(aList) - 1;
    END;
  END;

PROCEDURE PrintList(aList : LIST);
  VAR
    i : INTEGER;
  BEGIN
    FOR i := 1 TO Length(aList) DO
      Writeln('The value of list ', i, ' is ', aList[i]);
  END;

PROCEDURE RandomList(VAR aList : LIST; n : INTEGER);
  VAR
    i : INTEGER;
  BEGIN
    Randomize;
    FOR i := 1 TO n DO
      Append(aList, Random(100)); { 0 <= Random(X) < X }
  END;

FUNCTION IsInList(aList : LIST; val : INTEGER) : BOOLEAN;
  VAR
    i : INTEGER;
    found : BOOLEAN;
  BEGIN
    found := false;
    FOR i := 1 TO Length(aList) DO
    BEGIN
      IF aList[i] = val THEN
      BEGIN
        found := true;
        break;
      END;
    END;
    IsInList := found;
  END;

FUNCTION Sum(aList : LIST) : INTEGER;
  VAR
   i, total : INTEGER;
  BEGIN
    total := 0;
    FOR i := 1 TO Length(aList) DO
      total := (aList[i]) + total;
    Sum := total;
  END;

FUNCTION LinearSearch(aList : LIST; value : INTEGER) : BOOLEAN;
  VAR
    i, count : INTEGER;
    Found : BOOLEAN;
  BEGIN
    Found := FALSE;
    count := 0;
    FOR i := 1 TO Length(aList) DO
    BEGIN
      count := count + 1;
      IF aList[i] = value THEN
      BEGIN
      Found := TRUE;
      Break;
      END;
    END;
  Writeln('Number of searches = ', count);
  LinearSearch := Found;
  END;

FUNCTION BinarySearch(aList : LIST; value : INTEGER) : BOOLEAN;
  VAR
    l, r, mid, count : INTEGER;
    Found : BOOLEAN;
  BEGIN
    Found := FALSE;
    l := 1;
    r := Length(aList);
    count := 0;
    REPEAT
      count := count + 1;
      mid := (l + r) DIV 2;
      IF aList[mid] = value THEN BEGIN
        Found := TRUE;
        Break;
      END
      ELSE IF aList[mid] < value THEN l := mid + 1
      ELSE r := mid - 1;
    UNTIL l > r;
    Writeln('Number of searches = ', count);
    BinarySearch := Found;
  END;

FUNCTION Average(aList : LIST) : REAL;
  BEGIN
    Average := Sum(aList)/Length(aList);
  END;

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

PROCEDURE BubbleSort(VAR aList : LIST);
  VAR
    i, j, temp : INTEGER;
  BEGIN
    FOR i := 1 TO Length(aList) - 1 DO
      FOR j := 1 TO Length(aList) - i DO
        IF aList[j] > aList[j + 1] THEN
        BEGIN
          temp := aList[j];
          aList[j] := aList[j + 1];
          aList[j + 1] := temp;
        END;
  END;

FUNCTION Smallest(aList : LIST) : INTEGER;
  VAR
    i, min : INTEGER;
  BEGIN
    min := aList[1];
    FOR i := 2 TO Length(aList) DO
      IF aList[i] < min THEN
        min := aList[i];
    Smallest := min;
  END;

FUNCTION Largest(aList : LIST) : INTEGER;
  VAR
    i, max : INTEGER;
  BEGIN
    max := aList[1];
    FOR i := 2 TO Length(aList) DO
      IF aList[i] < max THEN
        max := aList[i];
    Largest := max;
  END;

{ String Functions }
FUNCTION Len(s : STRING) : INTEGER;
  BEGIN
    Len := ord(s[0]);
  END;

FUNCTION Concat(s1, s2 : STRING) : STRING;
  VAR
    i : INTEGER;
    temps : STRING;
  BEGIN
    FOR i := 1 TO len(s1) DO
      temps[i] := s1[i];
    FOR i := 1 TO len(s2) DO
      temps[len(s1) + i] := s2[i];
    temps[0] := chr(Len(s1) + Len(s2));
    Concat := temps;
  END;

FUNCTION Reverse(s : STRING) : STRING;
  VAR
    i : INTEGER;
    temps : STRING;
  BEGIN
    FOR i := 1 TO len(s) DO
      temps[i] := s[len(s) - i + 1];
    temps[0] := s[0];
    Reverse := temps;
  END;

FUNCTION Prefix(s : STRING; n : INTEGER) : STRING;
  VAR
    i : INTEGER;
    temps : STRING;
  BEGIN
    FOR i := 1 TO n DO
      temps[i] := s[i];
    temps[0] := chr(n);
    prefix := temps;
  END;

FUNCTION Substring(s : STRING; start, n : INTEGER) : STRING;
  VAR
    i : INTEGER;
    temps : STRING;
BEGIN
  BEGIN
    BEGIN
    FOR i := 1 TO n DO
      temps[i] := s[start + i - 1];
    temps[0] := chr(n);
    Substring := temps;
    END;
  END;
END;
END.