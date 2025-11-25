object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Minha conta - Banco Tech4Money'
  ClientHeight = 648
  ClientWidth = 525
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  RoundedCorners = rcOn
  OnCreate = FormCreate
  TextHeight = 21
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 525
    Height = 56
    Align = alTop
    TabOrder = 0
    object lblTitulo: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 35
      Width = 517
      Height = 17
      Align = alBottom
      Alignment = taCenter
      Caption = 
        'Para Prosseguir, crie sua conta. Ap'#243's isso, ser'#225' poss'#237'vel Deposi' +
        'tar e Sacar valores.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = 18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 505
    end
    object lblTitulo2: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 517
      Height = 17
      Align = alTop
      Alignment = taCenter
      Caption = 'Bem Vindo ao Banco Tech4Money!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = 18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 213
    end
  end
  object grpEntradas: TGroupBox
    Left = 0
    Top = 56
    Width = 525
    Height = 337
    Align = alTop
    TabOrder = 1
    object lblNumeroConta: TLabel
      Left = 24
      Top = 80
      Width = 60
      Height = 30
      Caption = 'Conta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblTitular: TLabel
      Left = 24
      Top = 23
      Width = 63
      Height = 30
      Caption = 'Titular:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblSaldo: TLabel
      Left = 309
      Top = 298
      Width = 194
      Height = 30
      Alignment = taRightJustify
      Caption = 'Saldo: R$ 0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtNumeroConta: TEdit
      Left = 106
      Top = 73
      Width = 120
      Height = 47
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edtTitular: TEdit
      Left = 106
      Top = 20
      Width = 397
      Height = 47
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object btnExibirSaldo: TButton
      Left = 236
      Top = 73
      Width = 135
      Height = 47
      Caption = 'Exibir Saldo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnExibirSaldoClick
    end
    object btnCriarConta: TButton
      Left = 383
      Top = 73
      Width = 120
      Height = 47
      Caption = 'Criar Conta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnCriarContaClick
    end
  end
  object grpBotoes: TGroupBox
    Left = 0
    Top = 393
    Width = 525
    Height = 101
    Align = alClient
    TabOrder = 2
    ExplicitTop = 368
    ExplicitHeight = 126
    object lblValor: TLabel
      Left = 13
      Top = 42
      Width = 87
      Height = 30
      Caption = 'Valor(R$):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblOperacao: TLabel
      AlignWithMargins = True
      Left = 0
      Top = 6
      Width = 522
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'Realizar opera'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = 18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnDepositar: TButton
      Left = 249
      Top = 34
      Width = 120
      Height = 47
      Caption = 'Depositar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnDepositarClick
    end
    object btnSacar: TButton
      Left = 383
      Top = 34
      Width = 120
      Height = 47
      Caption = 'Sacar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnSacarClick
    end
    object edtValor: TEdit
      Left = 106
      Top = 34
      Width = 120
      Height = 47
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object grpRodape: TGroupBox
    Left = 0
    Top = 494
    Width = 525
    Height = 154
    Align = alBottom
    TabOrder = 3
    object lbllog: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 517
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'Ultimas movimenta'#231#245'es:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = 18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MemoLog: TMemo
      Left = 2
      Top = 28
      Width = 521
      Height = 124
      Align = alBottom
      TabOrder = 0
    end
  end
end
