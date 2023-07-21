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
  object Label1: TLabel
    Left = 8
    Top = 373
    Width = 60
    Height = 30
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 16
    Width = 305
    Height = 225
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 327
    Top = 16
    Width = 293
    Height = 225
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 8
    Top = 409
    Width = 75
    Height = 25
    Caption = 'Normal'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 545
    Top = 409
    Width = 75
    Height = 25
    Caption = 'Batch'
    TabOrder = 3
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\BD\BANCO-TESTE.FDB'
      'User_Name=SYSDBA'
      'Password=gerence@5455'
      'DriverID=FB')
    Connected = True
    Left = 256
    Top = 288
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 168
    Top = 144
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      '                    SELECT * FROM PRODUTO')
    Left = 400
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 48
    Top = 184
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 504
    Top = 200
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 168
    Top = 72
  end
  object FDMemTable2: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 480
    Top = 112
  end
  object FDQuery3: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM CLIENTE;'
      'SELECT * FROM PRODUTO')
    Left = 472
    Top = 296
  end
end
