object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 841
  ClientWidth = 931
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 24
    Top = 192
    Width = 289
    Height = 224
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 24
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Ver Clientes'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 88
    Top = 80
    Width = 513
    Height = 23
    TabOrder = 2
  end
  object Button2: TButton
    Left = 526
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 328
    Top = 192
    Width = 593
    Height = 642
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 24
    Top = 80
    Width = 49
    Height = 23
    TabOrder = 5
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\BD\BANCO-TESTE.FDB'
      'User_Name=SYSDBA'
      'Password=gerence@5455'
      'MonitorBy=Remote'
      'DriverID=FB')
    Left = 584
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 40
    Top = 136
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 352
    Top = 112
  end
  object FDMoniCustomClientLink1: TFDMoniCustomClientLink
    Left = 232
    Top = 784
  end
  object FDMoniFlatFileClientLink1: TFDMoniFlatFileClientLink
    FileName = 'Evento.txt'
    Left = 64
    Top = 784
  end
  object SQLMonitor1: TSQLMonitor
    Left = 64
    Top = 720
  end
  object FDMoniRemoteClientLink1: TFDMoniRemoteClientLink
    Tracing = True
    Left = 144
    Top = 552
  end
end
