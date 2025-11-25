program Tech4Money;

uses
  Vcl.Forms,
  Tela.Principal in '..\ContaBanco\src\Tela.Principal.pas' {frmPrincipal},
  Classe.TContaBancaria in '..\ContaBanco\src\Classe.TContaBancaria.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.