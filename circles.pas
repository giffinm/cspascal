PROGRAM circles; { Draw 10 circles in random spots }
USES graph;
CONST
  RAD = 120;
VAR
  x, y, r, gm, gd, i : INTEGER;
BEGIN
  gd := Detect;
  InitGraph(gd, gm, 'C:\TPWDB\BGI'); { Setup for graphics }

  FOR i := 10 Downto 1 DO
    BEGIN
    r := Random(120);
    x := Random(640);
    y := Random(480);
    Circle(x, y, r);
    END;

  Read(x);
  CloseGraph;
END.