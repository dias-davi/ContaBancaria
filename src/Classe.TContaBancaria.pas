unit Classe.TContaBancaria;

interface

type
  TContaBancaria = class
  private
    FNumero: Integer;
    FNome: string;
    FSaldo: Double;
  public
    constructor Create(ANumero: Integer; ANome: string);

    procedure Depositar(AValor: Double);
    function Sacar(AValor: Double): Boolean;

    property Numero: Integer read FNumero;
    property Nome: string read FNome;
    property Saldo: Double read FSaldo write FSaldo;
  end;

implementation

{ TContaBancaria }

constructor TContaBancaria.Create(ANumero: Integer; ANome: string);
begin
  FNumero := ANumero;
  FNome := ANome;
  FSaldo := 0;
end;

procedure TContaBancaria.Depositar(AValor: Double);
begin
  FSaldo := FSaldo + AValor;
end;

function TContaBancaria.Sacar(AValor: Double): Boolean;
begin
  if AValor <= FSaldo then
  begin
    FSaldo := FSaldo - AValor;
    Result := True;
  end
  else
    Result := False;
end;

end.

