object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 658
  ClientWidth = 336
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 105
    Top = 8
    Width = 104
    Height = 13
    Caption = 'Adja meg az orsz'#225'got'
  end
  object Label2: TLabel
    Left = 105
    Top = 62
    Width = 110
    Height = 13
    Caption = 'Adja meg a p'#233'nznemet'
  end
  object Button1: TButton
    Left = 120
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Felt'#246'lt'#233's'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 184
    Width = 273
    Height = 457
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'COUNTRY'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CURRENCY'
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 96
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 2
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 96
    Top = 91
    Width = 121
    Height = 21
    TabOrder = 3
    OnChange = Edit2Change
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 32
    Top = 24
  end
  object FDConnection1: TFDConnection
    ConnectionName = 'Proba'
    Params.Strings = (
      'Database=C:\Users\Hp\Documents\DEVEL\adatb'#225'zis\EMPLOYEE.FDB'
      'User_Name=Yourusername'
      'Password=Yourpassword'
      'Server=127.0.0.1'
      'DriverID=FB')
    Connected = True
    Left = 248
    Top = 24
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from country')
    Left = 24
    Top = 592
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 256
    Top = 592
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDQuery1
    Left = 96
    Top = 592
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 176
    Top = 592
  end
end
