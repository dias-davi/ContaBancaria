unit Tela.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Datasnap.DBClient, System.Generics.Collections, Classe.TContaBancaria;

type
  TfrmPrincipal = class(TForm)
    pnlTop: TPanel;
    lblTitulo: TLabel;
    grpEntradas: TGroupBox;
    lblNumeroConta: TLabel;
    lblTitular: TLabel;
    lblValor: TLabel;
    lblSaldo: TLabel;
    edtNumeroConta: TEdit;
    edtTitular: TEdit;
    edtValor: TEdit;
    grpBotoes: TGroupBox;
    btnCriarConta: TButton;
    btnDepositar: TButton;
    btnExibirSaldo: TButton;
    btnSacar: TButton;
    grpRodape: TGroupBox;
    MemoLog: TMemo;
    lblTitulo2: TLabel;
    lbllog: TLabel;
    lblOperacao: TLabel;

    procedure FormCreate(Sender: TObject);
    procedure btnCriarContaClick(Sender: TObject);
    procedure btnExibirSaldoClick(Sender: TObject);
    procedure btnDepositarClick(Sender: TObject);
    procedure btnSacarClick(Sender: TObject);


  private
    FContaAtiva: TContaBancaria;
    FContas: TObjectDictionary<Integer, TContaBancaria>;
    cdsContas: TClientDataSet;

    procedure Log(const Msg: string);
    procedure AtualizarSaldo;
    procedure CarregarConta(NumeroConta: Integer);
    procedure LimparValores();
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}


procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  MemoLog.Clear;

  lblSaldo.Visible := False;

  edtValor.Enabled := False;

  FContas := TObjectDictionary<Integer, TContaBancaria>.Create([doOwnsValues]);

  cdsContas := TClientDataSet.Create(nil);
  with cdsContas.FieldDefs do
  begin
    Add('Numero', ftInteger);
    Add('Nome', ftString, 80);
    Add('Saldo', ftFloat);
  end;
  cdsContas.CreateDataSet;

  Log('Aplicação iniciada.');
end;


procedure TfrmPrincipal.LimparValores;
begin
  edtValor.Text := '';
  lblSaldo.Visible := False
end;

procedure TfrmPrincipal.Log(const Msg: string);
begin
  MemoLog.Lines.Add(FormatDateTime('[hh:nn] ', Now) + Msg);
end;

procedure TfrmPrincipal.AtualizarSaldo;
begin
  if Assigned(FContaAtiva) then
    lblSaldo.Caption := Format('Saldo: R$ %.2f', [FContaAtiva.Saldo])
  else
    lblSaldo.Caption := 'Saldo: R$ 0.00';
end;

procedure TfrmPrincipal.CarregarConta(NumeroConta: Integer);
begin
  if not FContas.ContainsKey(NumeroConta) then
  begin
    Log('Conta não encontrada.');
    Exit;
  end;

  FContaAtiva := FContas[NumeroConta];

  edtValor.Enabled := True;

  edtNumeroConta.Text := IntToStr(FContaAtiva.Numero);
  edtTitular.Text := FContaAtiva.Nome;

  AtualizarSaldo;

  Log('Conta carregada: ' + FContaAtiva.Nome);
end;

procedure TfrmPrincipal.btnCriarContaClick(Sender: TObject);
var
  NumeroConta: Integer;
  NomeTitular: string;
begin
  if not TryStrToInt(edtNumeroConta.Text, NumeroConta) then
  begin
    Log('Número da conta inválido.');
    Exit;
  end;

  NomeTitular := Trim(edtTitular.Text);
  if NomeTitular = '' then
  begin
    Log('O nome do titular é obrigatório.');
    Exit;
  end;

  if FContas.ContainsKey(NumeroConta) then
  begin
    CarregarConta(NumeroConta);
    Log('Conta já existente carregada.');
    Exit;
  end;
  FContas.Add(NumeroConta, TContaBancaria.Create(NumeroConta, NomeTitular));

  CarregarConta(NumeroConta);

  cdsContas.Append;
  cdsContas.FieldByName('Numero').AsInteger := NumeroConta;
  cdsContas.FieldByName('Nome').AsString := NomeTitular;
  cdsContas.FieldByName('Saldo').AsFloat := 0;
  cdsContas.Post;

  AtualizarSaldo;

  Log('Conta criada com sucesso: ' + NomeTitular);
end;

procedure TfrmPrincipal.btnDepositarClick(Sender: TObject);
var
  ValorDeposito: Double;
begin
  if not Assigned(FContaAtiva) then
  begin
    Log('Nenhuma conta selecionada.');
    Exit;
  end;

  if not TryStrToFloat(edtValor.Text, ValorDeposito) then
  begin
    Log('Valor inválido.');
    Exit;
  end;

  if ValorDeposito <= 0 then
  begin
    Log('Digite um valor maior que zero.');
    Exit;
  end;

  FContaAtiva.Depositar(ValorDeposito);
  LimparValores();
  AtualizarSaldo;

  Log(Format('Depósito de R$ %.2f realizado.', [ValorDeposito]));
end;

procedure TfrmPrincipal.btnExibirSaldoClick(Sender: TObject);
begin
  if Assigned(FContaAtiva) then
    begin
      Log(Format('Saldo atual: R$ %.2f', [FContaAtiva.Saldo]));
      lblSaldo.Visible:=True;
    end
  else
    Log('Nenhuma conta selecionada.');
end;

procedure TfrmPrincipal.btnSacarClick(Sender: TObject);
var
  ValorSaque: Double;
begin
  if not Assigned(FContaAtiva) then
  begin
    Log('Nenhuma conta selecionada.');
    Exit;
  end;

  if not TryStrToFloat(edtValor.Text, ValorSaque) then
  begin
    Log('Valor inválido.');
    Exit;
  end;

  if FContaAtiva.Sacar(ValorSaque) then
  begin
    AtualizarSaldo;
    LimparValores();
    Log(Format('Saque de R$ %.2f realizado.', [ValorSaque]));
  end
  else
    Log('Saldo insuficiente.');
end;

end.

