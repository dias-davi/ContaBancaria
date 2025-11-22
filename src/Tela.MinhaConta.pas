unit Tela.MinhaConta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TfrmTelaMinhaConta = class(TForm)
    grpCampos: TGroupBox;
    lbledtConta: TLabeledEdit;
    lbledtValor: TLabeledEdit;
    lbledt1: TLabeledEdit;
    grpBotoes: TGroupBox;
    btnDepositar: TButton;
    btnExibirSaldo: TButton;
    btnSacar: TButton;
    pgcAcoesDaConta: TPageControl;
    tsDeposito: TTabSheet;
    tsSaque: TTabSheet;
    btnConfirmarSaque: TButton;
    btnConfirmarDeposito: TButton;
    lblSaudacao: TLabel;
    grpRodape: TGroupBox;
    tsPrincipal: TTabSheet;
    btnSair: TButton;
    edtValorSaque: TLabeledEdit;
    edtDataDeposito: TLabeledEdit;
    chkAgendarDeposito: TCheckBox;
    procedure btnSairClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaMinhaConta: TfrmTelaMinhaConta;

implementation

{$R *.dfm}



procedure TfrmTelaMinhaConta.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
