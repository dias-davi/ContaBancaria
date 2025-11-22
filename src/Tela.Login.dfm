object frmTelaLogin: TfrmTelaLogin
  Left = 0
  Top = 0
  BorderStyle = bsNone
  BorderWidth = 1
  Caption = 'Login'
  ClientHeight = 294
  ClientWidth = 288
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 15
  object grpLogin: TGroupBox
    Left = 0
    Top = 73
    Width = 288
    Height = 151
    Align = alClient
    TabOrder = 1
    ExplicitTop = 55
    ExplicitWidth = 217
    ExplicitHeight = 210
    object lblConta: TLabel
      AlignWithMargins = True
      Left = 27
      Top = 8
      Width = 47
      Height = 25
      Caption = 'Conta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblSenha: TLabel
      AlignWithMargins = True
      Left = 27
      Top = 75
      Width = 48
      Height = 25
      Caption = 'Senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object edtNumeroConta: TEdit
      AlignWithMargins = True
      Left = 27
      Top = 33
      Width = 230
      Height = 39
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtSenha: TEdit
      AlignWithMargins = True
      Left = 27
      Top = 101
      Width = 230
      Height = 39
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object grpCabecalho: TGroupBox
    Left = 0
    Top = 0
    Width = 288
    Height = 73
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 218
    object lblInstrucao: TLabel
      Left = 2
      Top = 17
      Width = 284
      Height = 54
      Align = alClient
      Caption = 
        'Para continuarmos, por favor, insira o n'#250'mero da sua conta e sen' +
        'ha:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitWidth = 244
      ExplicitHeight = 75
    end
  end
  object grpRodape: TGroupBox
    Left = 0
    Top = 224
    Width = 288
    Height = 70
    Align = alBottom
    TabOrder = 2
    ExplicitWidth = 248
    object btnSair: TButton
      Left = 179
      Top = 16
      Width = 78
      Height = 39
      Caption = 'Voltar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnSairClick
    end
    object btnSubmeter: TButton
      AlignWithMargins = True
      Left = 27
      Top = 16
      Width = 78
      Height = 39
      Caption = 'Acessar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnSubmeterClick
    end
  end
end
