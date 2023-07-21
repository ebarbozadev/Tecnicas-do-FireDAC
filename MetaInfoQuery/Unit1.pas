unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Vcl.StdCtrls, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button1: TButton;
    FDMetaInfoQuery1: TFDMetaInfoQuery;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    Button2: TButton;
    FDMetaInfoQuery2: TFDMetaInfoQuery;
    DataSource2: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FDMetaInfoQuery1AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FDConnection1.GetTableNames(
    '', '', '', ListBox1.Items
  )
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FDMetaInfoQuery1.Open();
end;

procedure TForm1.FDMetaInfoQuery1AfterScroll(DataSet: TDataSet);
begin
  FDMetaInfoQuery2.Close();
  FDMetaInfoQuery2.ObjectName := FDMetaInfoQuery1.FieldByName('TABLE_NAME').AsString;
  FDMetaInfoQuery2.Open();
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  if ListBox1.ItemIndex > -1 then
    FDConnection1.GetFieldNames(
      '', '', ListBox1.Items[ListBox1.ItemIndex], '', ListBox2.Items
    );
end;

end.
