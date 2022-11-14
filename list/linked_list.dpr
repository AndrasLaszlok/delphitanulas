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
     new_rec,act_rec,first_rec,last_rec_: PFaegyed;

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


  if kod>0 then begin    {ha nem szab�lyos fafajk�dot adott meg, ez nem fut le}
              Writeln('Adja meg a famagass�got (m):');
              Readln(mag);
              Writeln('Adja meg a mellmagass�gi �tm�r�t (mm):');
              Readln(atm);

              new(new_rec);
              new_rec^.fafajkod:=kod;
              new_rec^.magassag:=mag;
              new_rec^.atmero:=atm;
              new_rec^.kov:=nil;
              if first_rec=nil then first_rec:=new_rec
                          else last_rec_^.kov:=new_rec;
              last_rec_:=new_rec;
              end;
 until bevitt=0;
 writeln;

 {Adatok ki�rat�sa}
 act_rec:=first_rec;
 while act_rec<>nil do begin
                   Writeln('Fa k�dja: ', act_rec^.fafajkod,',');
                   Writeln('Fa magass�ga: ', act_rec^.magassag,',');
                   Writeln('Fa mellmagass�gi �tm�r�je: ',act_rec^.atmero,',');
                   act_rec:=act_rec^.kov;
                   end;
 writeln;

 {Mem�ria felszabad�t�sa}
 act_rec:=first_rec;
 while act_rec<>nil do begin
                   first_rec:=act_rec^.kov;
                   dispose(act_rec);
                   act_rec:=first_rec;
                   end;

 Readln;

  except
   on E: Exception do
    begin
      Writeln(E.ClassName, ': ', E.Message);
      Writeln;
      Writeln('Csak eg�sz sz�mok adhat�k meg!');
      Readln;
    end;
  end;
end.
