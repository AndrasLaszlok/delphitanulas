unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Phys.FBDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Phys.IBBase,
  FireDAC.Phys.FB, Vcl.StdCtrls, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FMX.Memo, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, Datasnap.Provider;

type
  TForm1 = class(TForm)
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDConnection1: TFDConnection;
    Button1: TButton;
    FDQuery1: TFDQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  orszag,penznem: string;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var i: integer;
begin
With FDConnection1 do
begin
 Open;
 ExecSql('insert into country values(:country, :currency)',[orszag,penznem]);
 DBGrid1.DataSource.DataSet.Refresh;
 Close;
end;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
orszag:=Edit1.Text;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
penznem:=Edit2.Text;
end;

end.

