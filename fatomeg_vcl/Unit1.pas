unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,Math;

type
  TForm1 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    ComboBox1: TComboBox;
    SpinEdit2: TSpinEdit;
    SpinEdit1: TSpinEdit;
    procedure ComboBox1Change(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

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

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
V:=(p1 + (p2 * D * H) + (p3 * D) + (p4 * H)) * (power((H / (H - 1.3)),k)) * (power(D,2)) * (H / (power(10,8)));
Canvas.Textout(110,200,format('Fatömeg: %f m3',[V]));
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin

 fafaj:= ComboBox1.ItemIndex+1;

 p1 := Parameterek[fafaj][1];
 p2 := Parameterek[fafaj][2];
 p3 := Parameterek[fafaj][3];
 p4 := Parameterek[fafaj][4];
 k := Parameterek[fafaj][5];

end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
D:= SpinEdit1.Value;
end;

procedure TForm1.SpinEdit2Change(Sender: TObject);
begin
H:= SpinEdit2.Value;
end;

end.
