object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Fat'#246'megsz'#225'm'#237't'#243' program'
  ClientHeight = 254
  ClientWidth = 319
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 56
    Top = 57
    Width = 208
    Height = 16
    Caption = 'Adja meg a mellmagass'#225'gi '#225'tm'#233'r'#337't!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 77
    Top = 107
    Width = 154
    Height = 16
    Caption = 'Adja meg a famagass'#225'got!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 121
    Top = 165
    Width = 75
    Height = 25
    Caption = 'Sz'#225'mol'#225's'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 86
    Top = 22
    Width = 145
    Height = 21
    MaxLength = 29
    TabOrder = 1
    Text = 'V'#225'lasszon fafajt!'
    OnChange = ComboBox1Change
    Items.Strings = (
      '1-Ak'#225'c'
      '2-B'#252'kk'
      '3-Cser             '
      '4-Fekete di'#243
      '5-Gyerty'#225'n'
      '6-Juharok'
      '7-Kocs'#225'nyos t'#246'lgy'
      '8-Kocs'#225'nytalan t'#246'lgy'
      '9-K'#337'ris'
      '10-V'#246'r'#246's t'#246'lgy'
      '11-Agathe-F ny'#225'r'
      '12-'#201'ger'
      '13-Feh'#233'r f'#369'z'
      '14-Feh'#233'r ny'#225'r'
      '15-Fekete ny'#225'r'
      '16-H'#225'rsak'
      '17-I-214 ny'#225'r'
      '18-K'#233'sei ny'#225'r'
      '19-Korai ny'#225'r'
      '20-K'#246'z'#246'ns'#233'ges ny'#237'r'
      '21-'#211'ri'#225's ny'#225'r'
      '22-Rezg'#337' ny'#225'r'
      '23-Dugl'#225'szfeny'#337
      '24-Erdeifeny'#337
      '25-Feketefeny'#337
      '26-Jegenyefeny'#337
      '27-Lucfeny'#337
      '28-V'#246'r'#246'sfeny'#337)
  end
  object SpinEdit2: TSpinEdit
    Left = 95
    Top = 129
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
    OnChange = SpinEdit2Change
  end
  object SpinEdit1: TSpinEdit
    Left = 95
    Top = 79
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
    OnChange = SpinEdit1Change
  end
end
