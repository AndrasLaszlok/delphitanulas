program fatomeg_cons;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  math;

var
  Parameterek: array[1..28, 1..5] of real =
                ((3.2003E+03,2.9442E-01,-1.8069E+00,-8.4771E+00,4.0000E+00),
		(4.6130E+03,7.1602E-01,-5.2382E+00,-3.4003E+01,1.0000E+00),
		(3.5023E+03,-1.5094E-01,8.3832E+00,1.3218E+00,2.0000E+00),
		(2.6353E+03,-6.5142E-01,3.5781E+01,1.0963E+01,4.0000E+00),
		(2.6863E+03,-6.6721E-01,4.9944E+01,2.2083E+01,2.0000E+00),
		(4.1732E+03,-8.4755E-03,4.9389E-01,-8.4324E+00,1.0000E+00),
		(2.3979E+03,-5.2279E-01,2.5230E+01,2.5880E+01,4.0000E+00),
		(2.7771E+03,-7.5112E-01,3.1496E+01,3.0352E+01,3.0000E+00),
		(2.8171E+03,6.2094E-02,-1.0991E+00,1.9500E+01,3.0000E+00),
		(4.4289E+03,2.0855E-01,-1.2585E+01,-1.2265E+01,1.0000E+00),
		(2.2920E+03,1.4296E-01,-6.3633E+00,3.0914E+01,4.0000E+00),
		(3.6318E+03,-2.5983E-02,2.7393E+00,1.5578E+00,1.0000E+00),
		(3.2188E+03,1.4227E-01,-3.7035E+00,-1.1502E+01,3.0000E+00),
		(3.1848E+03,-3.4369E-01,1.0211E+01,2.4682E+00,3.0000E+00),
		(3.4216E+03,-9.6765E-02,3.1602E+00,-9.3335E+00,2.0000E+00),
		(4.1422E+03,1.3081E-01,-2.7146E+00,-1.9825E+01,1.0000E+00),
		(2.3411E+03,-1.3816E-01,1.4439E+01,1.5625E+01,4.0000E+00),
		(2.6780E+03,-3.5070E-01,1.0302E+01,1.2449E+01,3.0000E+00),
		(2.7200E+03,-1.5568E-01,8.4776E+00,6.3624E+00,2.0000E+00),
		(4.7389E+03,1.1636E+00,-3.5994E+01,-4.0625E+01,1.0000E+00),
		(3.1991E+03,-1.4467E-01,7.3741E+00,7.8955E-01,2.0000E+00),
		(2.9624E+03,-3.9647E-01,1.5260E+01,1.4990E+01,3.0000E+00),
		(3.8939E+03,2.5449E-01,-1.8017E+01,-8.1867E+00,3.0000E+00),
		(3.2381E+03,5.1273E-02,5.7325E+00,-1.4593E+01,4.0000E+00),
		(3.3482E+03,-2.2665E-01,1.1599E+01,-3.0405E+00,4.0000E+00),
		(5.3501E+03,-1.2820E-02,1.0617E+00,-3.9182E+01,1.0000E+00),
		(3.9833E+03,-1.5907E-01,-8.3139E+00,5.0847E+00,3.0000E+00),
		(2.6830E+03,4.8460E-03,-1.4928E+01,4.0281E+01,3.0000E+00));
  V, D, H, p1, p2, p3, p4, k: real;
  fafaj: integer;

begin
  try
   repeat
   Writeln;
   Writeln('Válasszon fafajt:');
   Writeln('0-Kilépés a programból');
   Writeln ('1-Akác             2-Bükk');
   Writeln ('3-Cser             4-Fekete dió');
   Writeln ('5-Gyertyán         6-Juharok');
   Writeln ('7-Kocsányos tölgy  8-Kocsánytalan tölgy');
   Writeln ('9-Kőris            10-Vörös tölgy');
   Writeln ('11-Agathe-F nyár   12-Éger');
   Writeln ('13-Fehér fûz       14-Fehér nyár');
   Writeln ('15-Fekete nyár     16-Hársak');
   Writeln ('17-I-214 nyár      18-Kései nyár');
   Writeln ('19-Korai nyár      20-Közönséges nyír');
   Writeln ('21-Óriás nyár      22-Rezgõ nyár');
   Writeln ('23-Duglászfenyõ    24-Erdeifenyõ');
   Writeln ('25-Feketefenyõ     26-Jegenyefenyõ');
   Writeln ('27-Lucfenyõ        28-Vörösfenyõ');

   readln(fafaj);

   if fafaj in [1..28] then

   begin

   Writeln('Adja meg a mellmagassági átmérõt (cm):');
   readln(D);
   Writeln('Adja meg a famagasságot (m):');
   readln(H);

    p1 := Parameterek[fafaj][1];
		p2 := Parameterek[fafaj][2];
		p3 := Parameterek[fafaj][3];
		p4 := Parameterek[fafaj][4];
		k := Parameterek[fafaj][5];


    V:=(p1 + (p2 * D * H) + (p3 * D) + (p4 * H)) * (power((H / (H - 1.3)),k)) * (power(D,2)) * (H / (power(10,8)));

    Writeln;
    Writeln('Fatömeg: ',V:2:2, ' m3');
   end

   else if fafaj <> 0 then begin
   Writeln;
   Writeln('Rosszul választott fafajt!');
   end;
   until fafaj = 0;

  except
    on E: Exception do
     begin
      Writeln(E.ClassName, ': ', E.Message);
      Writeln('Csak számok adhatók meg!');
      Readln;
     end;
  end;
end.

