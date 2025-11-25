program Tech4Money;

uses
  Vcl.Forms,
  Tela.Principal in 'src\Tela.Principal.pas' {frmPrincipal},
  Classe.TContaBancaria in 'src\Classe.TContaBancaria.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.