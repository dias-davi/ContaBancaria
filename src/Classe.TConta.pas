unit Classe.TConta;

interface
  type
    TConta = class

    private
      FNumeroConta: Integer;
      FTitular: string ;
      FSaldo: Double;

    protected

    public
      procedure Depositar(pValor:Double);
      procedure Sacar(pValor:Double);
      function ExibirSaldo:Double;

    published

    end;

implementation

procedure TConta.Depositar(pValor: Double);
begin
  FSaldo:= FSaldo + pValor;
end;

function TConta.ExibirSaldo: Double;
begin

end;

procedure TConta.Sacar(pValor: Double);
begin

end;

end.
