unit Tela.CadastroConta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Classe.TConta, Classe.TAutenticacao, Tela.MinhaConta, Vcl.ComCtrls;

type
  TfrmTelaCadastroConta = class(TForm)
    grpcabecalho: TGroupBox;
    grpRodape: TGroupBox;
    btnConfirmar: TButton;
    btnSair: TButton;
    lblInstrucao: TLabel;
    grpCadastro: TGroupBox;
    pgcDados: TPageControl;
    tsDadosPessoais: TTabSheet;
    tsContatos: TTabSheet;
    tsEndereco: TTabSheet;
    grpDadosPessoais: TGroupBox;
    edtCPF: TLabeledEdit;
    edtNomeCompleto: TLabeledEdit;
    grpEndereco: TGroupBox;
    lblLogradouro: TLabel;
    edtBairro: TLabeledEdit;
    edtEndereço: TLabeledEdit;
    cbbLogradouro: TComboBox;
    edtNumeroEndereco: TLabeledEdit;
    edtCidade: TLabeledEdit;
    edtComplemento: TLabeledEdit;
    edtApartamentoBloco: TLabeledEdit;
    grpContato: TGroupBox;
    edtTelefone: TLabeledEdit;
    edtEmail: TLabeledEdit;
    edtCelular: TLabeledEdit;
    procedure btnSairClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmTelaCadastroConta: TfrmTelaCadastroConta;

implementation

{$R *.dfm}

procedure TfrmTelaCadastroConta.btnConfirmarClick(Sender: TObject);
begin
  if True then
    frmTelaMinhaConta.ShowModal;
    Close;
end;

procedure TfrmTelaCadastroConta.btnSairClick(Sender: TObject);
begin
  Close;
end;



end.
