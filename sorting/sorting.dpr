program sorting;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var fafajok:  array[1..10] of integer;
	i, j, x, fafajszam, bevitt: integer;

begin
  try
   fafajszam:=1;   //abb�l indulunk ki, hogy legal�bb egy fafaj van a mintater�leten

  //adatt�mb felt�lt�se

    Writeln('Adja meg a fafajk�dokat!');
    Writeln('121-kocs�nytalan t�lgy, 211-cser, 311-b�kk, 411-gyerty�n, 511-ak�c');
    Writeln;

   for i:=1 to 10 do begin
                    Write(i,'. fafajk�d: ');
                    Readln(bevitt);
                    case bevitt of
                    121: fafajok[i]:=bevitt;
                    211: fafajok[i]:=bevitt;
                    311: fafajok[i]:=bevitt;
                    411: fafajok[i]:=bevitt;
                    511: fafajok[i]:=bevitt;
                    else Writeln('Nem szab�lyos fafajk�dott adott meg!');
                    end;
                    end;


  //adatt�mb elemeinek sorbarendez�se

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

  //sorbarendezett adatt�mb ki�rat�sa, szab�lytalan k�dok 0 �rt�ket kaptak

   Writeln;
   Writeln('Az adatt�mb elemei sorbarendezve:');

  for i := 1 to 10 do
     Writeln(fafajok[i]);

  {fafajok megsz�ml�l�sa, v�gigmegy a sorbarendezett list�n,
  ha k�t egym�st k�vet� k�d k�l�nb�zik, megn�veli a fafajsz�mot 1-el,
  az�rt csak 9-ig megy, hogy a 10-el m�g pont �ssze tudja hasonl�tani,
  ha szab�lytalan fafajk�dott vitt�nk fel, a 0 �rt�ket nem sz�molja be}

  for i:=1 to 9 do
   begin
    if (fafajok[i]<>fafajok[i+1]) and (fafajok[i]<>0) then fafajszam:=fafajszam+1;
   end;

  // ki�rat�s

  begin
  Writeln;
  Writeln(format('Fafajok sz�ma: %d ',[fafajszam]));
  end;

  readln;

  except
    on E: Exception do
    begin
      Writeln(E.ClassName, ': ', E.Message);
      Writeln;
      Writeln('Csak sz�mok adhat�k meg!');
      Readln;
    end;
  end;
end.
