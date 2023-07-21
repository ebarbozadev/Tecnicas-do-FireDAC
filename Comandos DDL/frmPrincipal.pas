unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Vcl.StdCtrls, Data.DB,
  FireDAC.Comp.Client;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
  // CRIANDO TABELA NO BANCO DE DADOS VIA DELPHI
  FDConnection1.ExecSQL('CREATE TABLE VIA_DELPHI(ID INTEGER NOT NULL PRIMARY KEY, DESCRICAO VARCHAR(50))');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FDConnection1.ExecSQL('DROP TABLE VIA_DELPHI', True);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Teste : String;
begin
  Teste := FDConnection1.ExecSQLScalar(
     'SELECT NOME FROM CLIENTE WHERE IDCLIENTE = :ID',
     [StrToInt(Edit1.Text)]
  );

  if Teste <> '' then
    Edit2.Text:= Teste
  else
    begin
      Edit1.Text:= '';
      Edit2.Text:= '';
      MessageDlg('Usu�rio n�o encontrado', TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
    end;
end;

end.
