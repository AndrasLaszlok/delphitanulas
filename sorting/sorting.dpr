program sorting;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var fafajok:  array[1..10] of integer;
	i, j, x, fafajszam, bevitt: integer;

begin
  try
   fafajszam:=1;   //abból indulunk ki, hogy legalább egy fafaj van a mintaterületen

  //adattömb feltöltése

    Writeln('Adja meg a fafajkódokat!');
    Writeln('121-kocsánytalan tölgy, 211-cser, 311-bükk, 411-gyertyán, 511-akác');
    Writeln;

   for i:=1 to 10 do begin
                    Write(i,'. fafajkód: ');
                    Readln(bevitt);
                    case bevitt of
                    121: fafajok[i]:=bevitt;
                    211: fafajok[i]:=bevitt;
                    311: fafajok[i]:=bevitt;
                    411: fafajok[i]:=bevitt;
                    511: fafajok[i]:=bevitt;
                    else Writeln('Nem szabályos fafajkódott adott meg!');
                    end;
                    end;


  //adattömb elemeinek sorbarendezése

  for i:=1 to 9 do
   for j:=i+1 to 10 do
    begin
    if fafajok[i]>fafajok[j] then
     begin
      x:=fafajok[j];
      fafajok[j]:=fafajok[i];
      fafajok[i]:=x;
    end;
   end;

  //sorbarendezett adattömb kiíratása, szabálytalan kódok 0 értéket kaptak

   Writeln;
   Writeln('Az adattömb elemei sorbarendezve:');

  for i := 1 to 10 do
     Writeln(fafajok[i]);

  {fafajok megszámlálása, végigmegy a sorbarendezett listán,
  ha két egymást követõ kód különbözik, megnöveli a fafajszámot 1-el,
  azért csak 9-ig megy, hogy a 10-el még pont össze tudja hasonlítani,
  ha szabálytalan fafajkódott vittünk fel, a 0 értéket nem számolja be}

  for i:=1 to 9 do
   begin
    if (fafajok[i]<>fafajok[i+1]) and (fafajok[i]<>0) then fafajszam:=fafajszam+1;
   end;

  // kiíratás

  begin
  Writeln;
  Writeln(format('Fafajok száma: %d ',[fafajszam]));
  end;

  readln;

  except
    on E: Exception do
    begin
      Writeln(E.ClassName, ': ', E.Message);
      Writeln;
      Writeln('Csak számok adhatók meg!');
      Readln;
    end;
  end;
end.
