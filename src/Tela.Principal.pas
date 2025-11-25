unit Tela.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Dialogs, Classe.TContaBancaria;

type
  TfrmPrincipal = class(TForm)
    pnlTop: TPanel;
    lblTitulo: TLabel;
    btnCriarConta: TButton;
    btnDepositar: TButton;
    btnSacar: TButton;
    btnExibirSaldo: TButton;
    MemoLog: TMemo;
    grpEntradas: TGroupBox;
    grpBotoes: TGroupBox;
    grpRodape: TGroupBox;
    lblNumeroConta: TLabel;
    lblTitular: TLabel;
    lblValor: TLabel;
    lblSaldo: TLabel;
    edtNumeroConta: TEdit;
    edtTitular: TEdit;
    edtValor: TEdit;
    procedure btnCriarContaClick(Sender: TObject);
    procedure btnDepositarClick(Sender: TObject);
    procedure btnSacarClick(Sender: TObject);
    procedure btnExibirSaldoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private

    FConta: TContaBancaria;
    procedure Log(const AMsg: string);
    procedure AtualizarSaldoLabel;
  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}


procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin

  FConta := nil;
  lblSaldo.Caption := 'Saldo: R$ 0.00';
  MemoLog.Enabled:= False;
  MemoLog.Lines.Clear;
  MemoLog.Clear;
  Log('Aplicação iniciada.');
end;

procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
  FConta.Free;
end;

procedure TfrmPrincipal.Log(const AMsg: string);
begin
  MemoLog.Lines.Add(FormatDateTime('hh:nn:ss', Now) + ' - ' + AMsg);
end;

procedure TfrmPrincipal.AtualizarSaldoLabel;
begin
  if Assigned(FConta) then
    lblSaldo.Caption := 'Saldo: R$ ' + FormatFloat('0.00', FConta.ObterSaldo)
  else
    lblSaldo.Caption := 'Saldo: R$ 0.00';
end;

procedure TfrmPrincipal.btnCriarContaClick(Sender: TObject);
var
  LNum: Integer;
  LNome: string;
begin
  if not TryStrToInt(Trim(edtNumeroConta.Text), LNum) or (LNum <= 0) then
  begin
    ShowMessage('Informe um número de conta válido (inteiro maior que 0).');
    edtNumeroConta.SetFocus;
    Exit;
  end;

  LNome := Trim(edtTitular.Text);
  if LNome = '' then
  begin
    ShowMessage('Informe o nome do titular.');
    edtTitular.SetFocus;
    Exit;
  end;

  FConta.Free;

  FConta := TContaBancaria.Create(LNum, LNome);
  Log(Format('Conta %d criada para %s', [LNum, LNome]));
  AtualizarSaldoLabel;
end;

procedure TfrmPrincipal.btnDepositarClick(Sender: TObject);
var
  LValor: Double;
begin
  if not Assigned(FConta) then
  begin
    ShowMessage('Crie uma conta antes de depositar.');
    Exit;
  end;

  if not TryStrToFloat(Trim(edtValor.Text), LValor) or (LValor <= 0) then
  begin
    ShowMessage('Informe um valor de depósito válido (número maior que zero).');
    edtValor.SetFocus;
    Exit;
  end;

  FConta.Depositar(LValor);
  Log(Format('Depósito: R$ %s', [FormatFloat('0.00', LValor)]));
  AtualizarSaldoLabel;
end;

procedure TfrmPrincipal.btnSacarClick(Sender: TObject);
var
  LValor: Double;
begin
  if not Assigned(FConta) then
  begin
    ShowMessage('Crie uma conta antes de sacar.');
    Exit;
  end;

  if not TryStrToFloat(Trim(edtValor.Text), LValor) or (LValor <= 0) then
  begin
    ShowMessage('Informe um valor de saque válido (número maior que zero).');
    edtValor.SetFocus;
    Exit;
  end;

  if not FConta.Sacar(LValor) then
  begin
    ShowMessage('Saldo insuficiente para saque.');
    Log(Format('Tentativa de saque falhou: R$ %s (Saldo atual: R$ %s)', [
      FormatFloat('0.00', LValor), FormatFloat('0.00', FConta.ObterSaldo)]));
    Exit;
  end;

  Log(Format('Saque: R$ %s', [FormatFloat('0.00', LValor)]));
  AtualizarSaldoLabel;
end;

procedure TfrmPrincipal.btnExibirSaldoClick(Sender: TObject);
begin
  if not Assigned(FConta) then
  begin
    ShowMessage('Crie uma conta primeiro.');
    Exit;
  end;

  ShowMessage('Saldo atual: R$ ' + FormatFloat('0.00', FConta.ObterSaldo));
  Log('Saldo exibido.');
  AtualizarSaldoLabel;
end;

end.

