object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Button1: TButton
    Left = 8
    Top = 409
    Width = 169
    Height = 25
    Caption = 'CREATE TABLE'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 369
    Width = 169
    Height = 25
    Caption = 'DROP TABLE'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 152
    Top = 72
    Width = 41
    Height = 23
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 199
    Top = 72
    Width = 217
    Height = 23
    TabOrder = 3
  end
  object Button3: TButton
    Left = 422
    Top = 71
    Width = 115
    Height = 25
    Caption = 'ExecSQLScalar'
    TabOrder = 4
    OnClick = Button3Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\BD\BANCO-TESTE.FDB'
      'User_Name=SYSDBA'
      'Password=gerence@5455'
      'DriverID=FB')
    Left = 400
    Top = 224
  end
end
