object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 859
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object ListBox1: TListBox
    Left = 16
    Top = 24
    Width = 225
    Height = 241
    ItemHeight = 15
    TabOrder = 0
    OnClick = ListBox1Click
  end
  object ListBox2: TListBox
    Left = 256
    Top = 24
    Width = 225
    Height = 241
    ItemHeight = 15
    TabOrder = 1
  end
  object Button1: TButton
    Left = 495
    Top = 24
    Width = 114
    Height = 25
    Caption = 'Pegar Tabelas'
    TabOrder = 2
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 312
    Width = 465
    Height = 113
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 440
    Width = 473
    Height = 113
    DataSource = DataSource2
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 495
    Top = 64
    Width = 114
    Height = 25
    Caption = 'Meta Dados'
    TabOrder = 5
    OnClick = Button2Click
  end
  object DBGrid3: TDBGrid
    Left = 8
    Top = 568
    Width = 473
    Height = 113
    DataSource = DataSource3
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button3: TButton
    Left = 495
    Top = 104
    Width = 114
    Height = 25
    Caption = 'Query Direta'
    TabOrder = 7
    OnClick = Button3Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\BD\BANCO-TESTE.FDB'
      'User_Name=SYSDBA'
      'Password=gerence@5455'
      'DriverID=FB')
    Connected = True
    OnRecover = FDConnection1Recover
    Left = 40
    Top = 792
  end
  object FDMetaInfoQuery1: TFDMetaInfoQuery
    AfterScroll = FDMetaInfoQuery1AfterScroll
    Connection = FDConnection1
    Left = 312
    Top = 360
  end
  object DataSource1: TDataSource
    DataSet = FDMetaInfoQuery1
    Left = 408
    Top = 360
  end
  object FDMetaInfoQuery2: TFDMetaInfoQuery
    Connection = FDConnection1
    MetaInfoKind = mkTableFields
    Left = 304
    Top = 488
  end
  object DataSource2: TDataSource
    DataSet = FDMetaInfoQuery2
    Left = 424
    Top = 496
  end
  object DataSource3: TDataSource
    DataSet = FDQuery1
    Left = 392
    Top = 616
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      '                    select * from cliente')
    Left = 264
    Top = 608
  end
end
