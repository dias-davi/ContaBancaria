object frmTelaInicial: TfrmTelaInicial
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'In'#237'cio'
  ClientHeight = 405
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object grpDados: TGroupBox
    Left = 0
    Top = 81
    Width = 472
    Height = 247
    Align = alClient
    TabOrder = 1
    ExplicitTop = 48
    ExplicitWidth = 274
    ExplicitHeight = 202
    object lblPossuoConta: TLabel
      Left = 3
      Top = 125
      Width = 466
      Height = 24
      Alignment = taCenter
      AutoSize = False
      Caption = 'J'#225' tem uma conta conosco?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblAindaNaoTemConta: TLabel
      Left = 3
      Top = 22
      Width = 466
      Height = 24
      Alignment = taCenter
      AutoSize = False
      Caption = 'Ainda n'#227'o tem uma conta? Come'#231'e por aqui:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object btnAcessarConta: TButton
      Left = 128
      Top = 158
      Width = 217
      Height = 54
      Caption = 'Acessar a minha conta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnAcessarContaClick
    end
    object btnCriarConta: TButton
      Left = 128
      Top = 56
      Width = 217
      Height = 54
      Caption = 'Criar minha conta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnCriarContaClick
    end
  end
  object grpRodape: TGroupBox
    Left = 0
    Top = 328
    Width = 472
    Height = 77
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      472
      77)
    object btnSair: TButton
      Left = 382
      Top = 16
      Width = 59
      Height = 49
      Anchors = [akRight, akBottom]
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnSairClick
    end
  end
  object grpCabecalho: TGroupBox
    Left = 0
    Top = 0
    Width = 472
    Height = 81
    Align = alTop
    TabOrder = 0
    object lblInstrucao: TLabel
      Left = 2
      Top = 17
      Width = 468
      Height = 62
      Align = alClient
      Alignment = taCenter
      Caption = 'Ol'#225'! Seja bem-vindo ao banco Tech4Money!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 386
      ExplicitHeight = 28
    end
  end
end
