program Tech4Money;

uses
  Vcl.Forms,
  Tela.Principal in 'src\Tela.Principal.pas' {frmTelaInicial},
  Classe.TConta in 'src\Classe.TConta.pas',
  Classe.TAutenticacao in 'src\Classe.TAutenticacao.pas',
  Tela.MinhaConta in 'src\Tela.MinhaConta.pas' {frmTelaMinhaConta},
  Tela.Login in 'src\Tela.Login.pas' {frmTelaLogin},
  Tela.CadastroConta in 'src\Tela.CadastroConta.pas' {frmTelaCadastroConta},
  Classe.TValidacao in 'src\Classe.TValidacao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTelaInicial, frmTelaInicial);
  Application.CreateForm(TfrmTelaMinhaConta, frmTelaMinhaConta);
  Application.CreateForm(TfrmTelaLogin, frmTelaLogin);
  Application.CreateForm(TfrmTelaCadastroConta, frmTelaCadastroConta);
  Application.Run;
end.
