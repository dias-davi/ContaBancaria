object frmTelaCadastroConta: TfrmTelaCadastroConta
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Criar Minha Conta'
  ClientHeight = 393
  ClientWidth = 608
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 15
  object grpcabecalho: TGroupBox
    Left = 0
    Top = 0
    Width = 608
    Height = 68
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 654
    object lblInstrucao: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 20
      Width = 598
      Height = 43
      Align = alClient
      Alignment = taCenter
      Caption = 'Para Continuar, preencha os campos com os seus dados:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 644
      ExplicitHeight = 31
    end
  end
  object grpRodape: TGroupBox
    Left = 0
    Top = 321
    Width = 608
    Height = 72
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 454
    ExplicitWidth = 654
    object btnConfirmar: TButton
      Left = 328
      Top = 16
      Width = 115
      Height = 41
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnConfirmarClick
    end
    object btnSair: TButton
      Left = 480
      Top = 16
      Width = 83
      Height = 41
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnSairClick
    end
  end
  object grpCadastro: TGroupBox
    Left = 0
    Top = 68
    Width = 608
    Height = 253
    Align = alClient
    Caption = 'Cadastro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 88
    ExplicitTop = 80
    ExplicitWidth = 905
    ExplicitHeight = 417
    object pgcDados: TPageControl
      Left = 2
      Top = 23
      Width = 604
      Height = 228
      ActivePage = tsDadosPessoais
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 588
      ExplicitHeight = 361
      object tsDadosPessoais: TTabSheet
        Caption = 'Dados Pessoais'
        object grpDadosPessoais: TGroupBox
          Left = 0
          Top = 0
          Width = 596
          Height = 192
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = -1
          ExplicitWidth = 642
          ExplicitHeight = 348
          object edtCPF: TLabeledEdit
            Left = 368
            Top = 51
            Width = 193
            Height = 31
            EditLabel.Width = 27
            EditLabel.Height = 21
            EditLabel.Caption = 'CPF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = ''
          end
          object edtNomeCompleto: TLabeledEdit
            Left = 16
            Top = 51
            Width = 346
            Height = 31
            EditLabel.Width = 115
            EditLabel.Height = 21
            EditLabel.Caption = 'Nome Completo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = ''
          end
        end
      end
      object tsContatos: TTabSheet
        Caption = 'Contatos'
        ImageIndex = 1
        object grpContato: TGroupBox
          Left = 0
          Top = 0
          Width = 596
          Height = 192
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitTop = 287
          ExplicitWidth = 893
          ExplicitHeight = 81
          object edtTelefone: TLabeledEdit
            Left = 16
            Top = 43
            Width = 129
            Height = 31
            EditLabel.Width = 57
            EditLabel.Height = 21
            EditLabel.Caption = 'Telefone'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = ''
          end
          object edtEmail: TLabeledEdit
            Left = 274
            Top = 43
            Width = 287
            Height = 31
            EditLabel.Width = 38
            EditLabel.Height = 21
            EditLabel.Caption = 'Email'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = ''
          end
          object edtCelular: TLabeledEdit
            Left = 151
            Top = 43
            Width = 117
            Height = 31
            EditLabel.Width = 57
            EditLabel.Height = 21
            EditLabel.Caption = 'Telefone'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = ''
          end
        end
      end
      object tsEndereco: TTabSheet
        Caption = 'Endere'#231'o'
        ImageIndex = 2
        object grpEndereco: TGroupBox
          Left = 0
          Top = 0
          Width = 596
          Height = 192
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitWidth = 893
          ExplicitHeight = 368
          object lblLogradouro: TLabel
            Left = 16
            Top = 21
            Width = 82
            Height = 21
            Caption = 'Logradouro'
          end
          object edtBairro: TLabeledEdit
            Left = 456
            Top = 42
            Width = 105
            Height = 31
            EditLabel.Width = 42
            EditLabel.Height = 21
            EditLabel.Caption = 'Bairro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Text = ''
          end
          object edtEndereço: TLabeledEdit
            Left = 127
            Top = 42
            Width = 250
            Height = 31
            EditLabel.Width = 64
            EditLabel.Height = 21
            EditLabel.Caption = 'Endere'#231'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = ''
          end
          object cbbLogradouro: TComboBox
            Left = 16
            Top = 42
            Width = 105
            Height = 31
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Items.Strings = (
              'Rua'
              'Avenida'
              'Pra'#231'a'
              'Travessa'
              'Alameda'
              'Rodovia'
              'Estrada'
              'Viela'
              'Viaduto'
              'Beco'
              'Ladeira'
              'Parque'
              'Condom'#237'nio'
              'Rodovia'
              'Aeroporto')
          end
          object edtNumeroEndereco: TLabeledEdit
            Left = 383
            Top = 42
            Width = 67
            Height = 31
            EditLabel.Width = 58
            EditLabel.Height = 21
            EditLabel.Caption = 'N'#250'mero'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = ''
          end
          object edtCidade: TLabeledEdit
            Left = 16
            Top = 100
            Width = 145
            Height = 31
            EditLabel.Width = 48
            EditLabel.Height = 21
            EditLabel.Caption = 'Cidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Text = ''
          end
          object edtComplemento: TLabeledEdit
            Left = 303
            Top = 100
            Width = 258
            Height = 31
            EditLabel.Width = 99
            EditLabel.Height = 21
            EditLabel.Caption = 'Complemento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            Text = ''
          end
          object edtApartamentoBloco: TLabeledEdit
            Left = 167
            Top = 100
            Width = 130
            Height = 31
            EditLabel.Width = 77
            EditLabel.Height = 21
            EditLabel.Caption = 'Apto/Bloco'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Text = ''
          end
        end
      end
    end
  end
end
