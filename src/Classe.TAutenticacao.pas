unit Classe.TAutenticacao;

  interface
  type
    TAutenticacao = class

    private

    protected

    public
      function ValidarLogin(pConta:Integer;pSenha:string):Boolean;

    published

    end;

implementation

{ TAutenticacao }

function TAutenticacao.ValidarLogin(pConta: Integer; pSenha: string): Boolean;
begin
  Result:= True //por enquanto
end;

end.
