object fMenu: TfMenu
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gest'#227'o'
  ClientHeight = 424
  ClientWidth = 782
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  Position = poDesktopCenter
  Scaled = False
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 392
    Top = 192
    object C1: TMenuItem
      Caption = 'Cadastros'
      object A1: TMenuItem
        Caption = 'Abastecimento'
        OnClick = A1Click
      end
    end
    object R1: TMenuItem
      Caption = 'Relat'#243'rios'
      object A2: TMenuItem
        Caption = 'Abastecimento'
        OnClick = A2Click
      end
    end
  end
end
