object fAbastecimento: TfAbastecimento
  Left = 0
  Top = 0
  Caption = 'Controle de Abastecimento'
  ClientHeight = 267
  ClientWidth = 473
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 13
  object label1: TLabel
    Left = 24
    Top = 32
    Width = 115
    Height = 13
    Caption = 'Data do abastecimento:'
  end
  object Label3: TLabel
    Left = 24
    Top = 83
    Width = 97
    Height = 13
    Caption = 'Bomba Combustivel:'
  end
  object Label4: TLabel
    Left = 24
    Top = 123
    Width = 104
    Height = 13
    Caption = 'Quantidade de Litros:'
  end
  object Label5: TLabel
    Left = 25
    Top = 163
    Width = 84
    Height = 13
    Caption = 'Valor Abastecido:'
  end
  object dtAbastecimento: TDateTimePicker
    Left = 146
    Top = 27
    Width = 186
    Height = 21
    Date = 45232.000000000000000000
    Time = 0.523118124998291000
    Enabled = False
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 146
    Top = 80
    Width = 179
    Height = 21
    TabOrder = 1
  end
  object edtLitros: TMaskEdit
    Left = 146
    Top = 120
    Width = 179
    Height = 21
    TabOrder = 2
    Text = ''
    OnExit = edtLitrosExit
  end
  object Button1: TButton
    Left = 160
    Top = 224
    Width = 121
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object edtValor: TMaskEdit
    Left = 146
    Top = 160
    Width = 179
    Height = 21
    TabOrder = 4
    Text = ''
    OnExit = edtValorExit
  end
end
