unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    FDConnection1: TFDConnection;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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
  FDConnection1.ExecSQL(
    'CREATE TABLE CLIENTE_TESTE(IDCLIENTE INTEGER NOT NULL PRIMARY KEY, NOME VARCHAR(30))'
  );
  Memo1.Clear;
  Memo1.Lines.Add('Tabela CLIENTE_TESTE criada!');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FDConnection1.ExecSQL('DROP TABLE CLIENTE_TESTE');
  Memo1.Clear;
  Memo1.Lines.Add('Tabela CLIENTE_TESTE deletada!');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  FDConnection1.ExecSQL(
    'INSERT INTO CLIENTE_TESTE (IDCLIENTE, NOME) VALUES (:IDCLIENTE, :NOME)',
    [StrToInt(Edit1.Text), Edit2.Text]
  );
  Memo1.Lines.Add('ID: ' + Edit1.Text + ' Nome: ' + Edit2.Text + ' cadastrado!');
  Edit1.Text:= '';
  Edit2.Text:= '';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Edit2.Text:= FDConnection1.ExecSQLScalar(
    'SELECT NOME FROM CLIENTE_TESTE WHERE IDCLIENTE = :ID', [StrToInt(Edit1.Text)]
  );
  Memo1.Lines.Add('Retorno do ID ' + Edit1.Text + ': ' + Edit2.Text);
  Edit1.Text:= '';
end;

end.
