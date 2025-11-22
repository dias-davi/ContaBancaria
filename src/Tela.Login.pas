unit Tela.Login;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Tela.MinhaConta, Tela.CadastroConta, Classe.TConta, Classe.TAutenticacao;

type
  TfrmTelaLogin = class(TForm)
    grpLogin: TGroupBox;
    edtNumeroConta: TEdit;
    edtSenha: TEdit;
    lblConta: TLabel;
    lblSenha: TLabel;
    btnSubmeter: TButton;
    btnSair: TButton;
    grpCabecalho: TGroupBox;
    lblInstrucao: TLabel;
    grpRodape: TGroupBox;
    procedure btnSubmeterClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaLogin: TfrmTelaLogin;

implementation

{$R *.dfm}



procedure TfrmTelaLogin.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTelaLogin.btnSubmeterClick(Sender: TObject);
var
  LResultadoAutenticacao: TAutenticacao;
  LNumeroConta: Integer;
  LSenha: string;
begin
  LNumeroConta:= StrToInt(edtNumeroConta.Text);
  LSenha:= edtSenha.Text;

  if LResultadoAutenticacao.ValidarLogin(LNumeroConta, LSenha) then
    frmTelaMinhaConta.ShowModal;
    Close;

end;

end.
