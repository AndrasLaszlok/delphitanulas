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

  {Adatok beolvasása}
 repeat
  Writeln;
  Writeln('Adja meg a fafajkodot (0-bevitel vege):');
  Writeln('121-kocsánytalan tölgy, 211-cser, 311-bükk, 411-gyertyán, 511-akác');
  Readln(bevitt);
   case bevitt of
                    121: kod:=bevitt;
                    211: kod:=bevitt;
                    311: kod:=bevitt;
                    411: kod:=bevitt;
                    511: kod:=bevitt;
                    else
                    begin
                    if bevitt <> 0 then Writeln('Nem szabályos fafajkódott adott meg!');
                    kod:=0;
                    end;
   end;


  if kod>0 then begin
              Writeln('Adja meg a famagasságot (m):');
              Readln(mag);
              Writeln('Adja meg a mellmagassági átmérõt (mm):');
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

 {Adatok kiíratása}
 akt:=elso;
 while akt<>nil do begin
                   Writeln('Fa kódja: ', akt^.fafajkod,',');
                   Writeln('Fa magassága: ', akt^.magassag,',');
                   Writeln('Fa mellmagassági átmérõje: ',akt^.atmero,',');
                   akt:=akt^.kov;
                   end;
 writeln;

 {Memória felszabadítása}
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
      Writeln('Csak számok adhatók meg!');
      Readln;
    end;
  end;
end.
