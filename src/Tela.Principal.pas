unit Tela.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Tela.MinhaConta, Tela.Login, Tela.CadastroConta, Classe.TConta, Classe.TAutenticacao;

type
  TfrmTelaInicial = class(TForm)
    btnAcessarConta: TButton;
    btnCriarConta: TButton;
    grpDados: TGroupBox;
    grpRodape: TGroupBox;
    btnSair: TButton;
    grpCabecalho: TGroupBox;
    lblInstrucao: TLabel;
    lblPossuoConta: TLabel;
    lblAindaNaoTemConta: TLabel;
    procedure btnAcessarContaClick(Sender: TObject);
    procedure btnCriarContaClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaInicial: TfrmTelaInicial;

implementation

{$R *.dfm}


{ TfrmTelaInicial }

procedure TfrmTelaInicial.btnAcessarContaClick(Sender: TObject);
begin
  frmTelaLogin.ShowModal;
end;

procedure TfrmTelaInicial.btnCriarContaClick(Sender: TObject);
begin
  frmTelaCadastroConta.ShowModal;
end;

procedure TfrmTelaInicial.btnSairClick(Sender: TObject);
begin
  Close;
end;


end.
