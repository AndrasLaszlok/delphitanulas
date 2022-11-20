program objektum;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

 type
  TKarosito = class
     Nev, Fafaj: String;
     Gyakorisag: Integer;
    private
    procedure SetKar (n, f :string; gy: Integer);
    procedure Kiir;
    public

  end;

procedure TKarosito.SetKar (n, f :string; gy: Integer);
begin
  Nev := n;
  Fafaj := f;
  Gyakorisag := gy;
end;

procedure TKarosito.Kiir;
begin
 Writeln('Károsító neve: ',Nev);
 Writeln('Károsítással érintett fafaj: ',Fafaj);
 Writeln('Gyakoriság(%): ',Gyakorisag);
end;

 var
  Karosito: TKarosito;

begin
  try
   Karosito:= TKarosito.Create;
   Karosito.SetKar('Adelges laricis','Larix decidua',20);
   Karosito.Kiir;
   Karosito.Free;
   Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
