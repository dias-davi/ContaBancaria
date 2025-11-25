object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Minha conta - Banco Tech4Money'
  ClientHeight = 494
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 465
    Height = 56
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 480
    object lblTitulo: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 457
      Height = 48
      Align = alClient
      Alignment = taCenter
      Caption = 'Bem Vindo! '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = 18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 16
      ExplicitTop = 8
      ExplicitWidth = 76
      ExplicitHeight = 17
    end
  end
  object grpEntradas: TGroupBox
    Left = 0
    Top = 56
    Width = 465
    Height = 153
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1211
    object lblNumeroConta: TLabel
      Left = 24
      Top = 26
      Width = 93
      Height = 15
      Caption = 'N'#250'mero da conta'
    end
    object lblTitular: TLabel
      Left = 24
      Top = 58
      Width = 37
      Height = 15
      Caption = 'Titular:'
    end
    object lblValor: TLabel
      Left = 24
      Top = 90
      Width = 53
      Height = 15
      Caption = 'Valor (R$):'
    end
    object lblSaldo: TLabel
      Left = 24
      Top = 122
      Width = 72
      Height = 15
      Caption = 'Saldo: R$ 0.00'
    end
    object edtNumeroConta: TEdit
      Left = 124
      Top = 18
      Width = 120
      Height = 23
      TabOrder = 0
    end
    object edtTitular: TEdit
      Left = 124
      Top = 50
      Width = 320
      Height = 23
      TabOrder = 1
    end
    object edtValor: TEdit
      Left = 124
      Top = 82
      Width = 120
      Height = 23
      TabOrder = 2
    end
  end
  object grpBotoes: TGroupBox
    Left = 0
    Top = 209
    Width = 465
    Height = 138
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 1211
    ExplicitHeight = 184
    object btnCriarConta: TButton
      Left = 16
      Top = 27
      Width = 120
      Height = 32
      Caption = 'Criar Conta'
      TabOrder = 0
      OnClick = btnCriarContaClick
    end
    object btnDepositar: TButton
      Left = 153
      Top = 89
      Width = 120
      Height = 32
      Caption = 'Depositar'
      TabOrder = 2
      OnClick = btnDepositarClick
    end
    object btnExibirSaldo: TButton
      Left = 16
      Top = 89
      Width = 120
      Height = 32
      Caption = 'Exibir Saldo'
      TabOrder = 1
      OnClick = btnExibirSaldoClick
    end
    object btnSacar: TButton
      Left = 297
      Top = 89
      Width = 120
      Height = 32
      Caption = 'Sacar'
      TabOrder = 3
      OnClick = btnSacarClick
    end
  end
  object grpRodape: TGroupBox
    Left = 0
    Top = 347
    Width = 465
    Height = 147
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 888
    ExplicitWidth = 1211
    object MemoLog: TMemo
      Left = 2
      Top = 17
      Width = 461
      Height = 128
      Align = alClient
      Lines.Strings = (
        #218'ltimas Ocorr'#234'ncias:'
        '')
      TabOrder = 0
      ExplicitLeft = 4
      ExplicitTop = 16
    end
  end
end
