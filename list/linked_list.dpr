program linked_list;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

  type PFaegyed = ^Faegyed;

     Faegyed = record
            fafajkod: integer;
            magassag: integer;
            atmero: integer;
            kov: PFaegyed;
            end;

     var
     kod, mag, atm, bevitt: integer;
     uj,akt,elso,utolso: PFaegyed;

begin
  try

  {Adatok beolvas�sa}
 repeat
  Writeln;
  Writeln('Adja meg a fafajkodot (0-bevitel vege):');
  Writeln('121-kocs�nytalan t�lgy, 211-cser, 311-b�kk, 411-gyerty�n, 511-ak�c');
  Readln(bevitt);
   case bevitt of
                    121: kod:=bevitt;
                    211: kod:=bevitt;
                    311: kod:=bevitt;
                    411: kod:=bevitt;
                    511: kod:=bevitt;
                    else
                    begin
                    if bevitt <> 0 then Writeln('Nem szab�lyos fafajk�dott adott meg!');
                    kod:=0;
                    end;
   end;


  if kod>0 then begin
              Writeln('Adja meg a famagass�got (m):');
              Readln(mag);
              Writeln('Adja meg a mellmagass�gi �tm�r�t (mm):');
              Readln(atm);

              new(uj);
              uj^.fafajkod:=kod;
              uj^.magassag:=mag;
              uj^.atmero:=atm;
              uj^.kov:=nil;
              if elso=nil then elso:=uj
                          else utolso^.kov:=uj;
              utolso:=uj;
              end;
 until bevitt=0;
 writeln;

 {Adatok ki�rat�sa}
 akt:=elso;
 while akt<>nil do begin
                   Writeln('Fa k�dja: ', akt^.fafajkod,',');
                   Writeln('Fa magass�ga: ', akt^.magassag,',');
                   Writeln('Fa mellmagass�gi �tm�r�je: ',akt^.atmero,',');
                   akt:=akt^.kov;
                   end;
 writeln;

 {Mem�ria felszabad�t�sa}
 akt:=elso;
 while akt<>nil do begin
                   elso:=akt^.kov;
                   dispose(akt);
                   akt:=elso;
                   end;

 Readln;

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
