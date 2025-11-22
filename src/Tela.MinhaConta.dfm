object frmTelaMinhaConta: TfrmTelaMinhaConta
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Minha Conta'
  ClientHeight = 528
  ClientWidth = 564
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 15
  object grpBotoes: TGroupBox
    Left = 0
    Top = 0
    Width = 564
    Height = 129
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 640
    object lblSaudacao: TLabel
      Left = 2
      Top = 17
      Width = 560
      Height = 21
      Align = alTop
      Alignment = taCenter
      Caption = 
        'Ol'#225'!! Seja bem vindo  '#224' '#225'rea da sua conta!  escolha uma das op'#231#245 +
        'es a seguir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 526
    end
    object btnDepositar: TButton
      Left = 228
      Top = 53
      Width = 105
      Height = 60
      Caption = 'Depositar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object btnExibirSaldo: TButton
      Left = 36
      Top = 53
      Width = 105
      Height = 60
      Caption = 'Exibir Saldo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object btnSacar: TButton
      Left = 420
      Top = 53
      Width = 105
      Height = 60
      Caption = 'Sacar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object pgcAcoesDaConta: TPageControl
    Left = 0
    Top = 129
    Width = 564
    Height = 327
    ActivePage = tsDeposito
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object tsPrincipal: TTabSheet
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object tsDeposito: TTabSheet
      ImageIndex = 3
      object grpCampos: TGroupBox
        Left = 32
        Top = 26
        Width = 489
        Height = 167
        TabOrder = 0
        object lbledtConta: TLabeledEdit
          Left = 33
          Top = 29
          Width = 145
          Height = 40
          EditLabel.Width = 41
          EditLabel.Height = 21
          EditLabel.Caption = 'Conta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = ''
        end
        object lbledtValor: TLabeledEdit
          Left = 33
          Top = 98
          Width = 145
          Height = 40
          EditLabel.Width = 39
          EditLabel.Height = 21
          EditLabel.Caption = 'Valor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = ''
        end
        object lbledt1: TLabeledEdit
          Left = 192
          Top = 29
          Width = 265
          Height = 40
          EditLabel.Width = 167
          EditLabel.Height = 21
          EditLabel.Caption = 'Nome (Titular da Conta)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = ''
        end
        object edtDataDeposito: TLabeledEdit
          Left = 308
          Top = 98
          Width = 149
          Height = 40
          EditLabel.Width = 32
          EditLabel.Height = 21
          EditLabel.Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = ''
        end
        object chkAgendarDeposito: TCheckBox
          Left = 205
          Top = 96
          Width = 97
          Height = 41
          Caption = 'Agendar Dep'#243'sito'
          TabOrder = 4
          WordWrap = True
        end
      end
      object btnConfirmarDeposito: TButton
        Left = 340
        Top = 224
        Width = 181
        Height = 41
        Caption = 'Confirmar Deposito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object tsSaque: TTabSheet
      ImageIndex = 1
      object btnConfirmarSaque: TButton
        Left = 194
        Top = 192
        Width = 175
        Height = 49
        Caption = 'Confirmar Saque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edtValorSaque: TLabeledEdit
        Left = 194
        Top = 128
        Width = 175
        Height = 41
        EditLabel.Width = 139
        EditLabel.Height = 30
        EditLabel.Caption = 'Valor do Saque'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -21
        EditLabel.Font.Name = 'Segoe UI'
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = ''
      end
    end
  end
  object grpRodape: TGroupBox
    Left = 0
    Top = 456
    Width = 564
    Height = 72
    Align = alBottom
    TabOrder = 2
    ExplicitWidth = 640
    object btnSair: TButton
      Left = 450
      Top = 16
      Width = 75
      Height = 41
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnSairClick
    end
  end
end
