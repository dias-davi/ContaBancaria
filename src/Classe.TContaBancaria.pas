unit Classe.TContaBancaria;

interface

type
  TContaBancaria = class
  private
    FNumeroConta: Integer;
    FTitular: string;
    FSaldo: Double;
  public
    constructor Create(ANumero: Integer = 0; const ATitular: string = '');
    procedure Depositar(const pValor: Double);
    function Sacar(const pValor: Double): Boolean;
    function ObterSaldo: Double;
    property NumeroConta: Integer read FNumeroConta write FNumeroConta;
    property Titular: string read FTitular write FTitular;
  end;

implementation

{ TContaBancaria }

constructor TContaBancaria.Create(ANumero: Integer; const ATitular: string);
begin
  inherited Create;
  FNumeroConta := ANumero;
  FTitular := ATitular;
  FSaldo := 0.0;
end;

procedure TContaBancaria.Depositar(const pValor: Double);
begin
  if pValor > 0 then
    FSaldo := FSaldo + pValor;
end;

function TContaBancaria.Sacar(const pValor: Double): Boolean;
begin
  Result := False;
  if (pValor > 0) and (FSaldo >= pValor) then
  begin
    FSaldo := FSaldo - pValor;
    Result := True;
  end;
end;

function TContaBancaria.ObterSaldo: Double;
begin
  Result := FSaldo;
end;

end.

