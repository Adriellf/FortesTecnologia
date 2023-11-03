object FRelatorio: TFRelatorio
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio'
  ClientHeight = 803
  ClientWidth = 1027
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object RLReport1: TRLReport
    Left = 8
    Top = 8
    Width = 992
    Height = 1403
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Title = 'Relat'#243'rio de Abastecimento'
    object RLBand1: TRLBand
      Left = 47
      Top = 47
      Width = 898
      Height = 59
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Color = clWhite
      ParentColor = False
      Transparent = False
      object RLSystemInfo1: TRLSystemInfo
        Left = 431
        Top = 0
        Width = 36
        Height = 16
        Align = faCenterTop
        Info = itTitle
        Text = ''
        Transparent = False
      end
      object RLLabel1: TRLLabel
        Left = 291
        Top = 22
        Width = 177
        Height = 27
        Caption = 'Abastecimentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 771
        Top = 0
        Width = 127
        Height = 16
        Align = faRightTop
        Info = itPageNumber
        Text = 'P'#225'gina'
        Transparent = False
      end
    end
    object RLBand2: TRLBand
      Left = 47
      Top = 106
      Width = 898
      Height = 16
      BandType = btHeader
      Color = 8421631
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentColor = False
      ParentFont = False
      Transparent = False
      object RLLabel3: TRLLabel
        Left = 48
        Top = 0
        Width = 31
        Height = 16
        Align = faTopOnly
        Caption = 'Data'
        Transparent = False
      end
      object RLLabel4: TRLLabel
        Left = 200
        Top = 0
        Width = 56
        Height = 16
        Align = faTopOnly
        Caption = 'Tanques'
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 448
        Top = 0
        Width = 54
        Height = 16
        Align = faTopOnly
        Caption = 'Bombas'
        Transparent = False
      end
      object RLLabel6: TRLLabel
        Left = 592
        Top = 0
        Width = 37
        Height = 16
        Align = faTopOnly
        Caption = 'Valor'
        Transparent = False
      end
    end
    object RLBand3: TRLBand
      Left = 47
      Top = 122
      Width = 898
      Height = 16
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLDBText2: TRLDBText
        Left = 48
        Top = 0
        Width = 70
        Height = 16
        Align = faTopOnly
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'data'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 200
        Top = 0
        Width = 113
        Height = 16
        Align = faTopOnly
        AutoSize = False
        DataField = 'tanques'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 448
        Top = 0
        Width = 97
        Height = 16
        Align = faTopOnly
        AutoSize = False
        DataField = 'bombas'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 592
        Top = 0
        Width = 89
        Height = 16
        Align = faTopOnly
        AutoSize = False
        DataField = 'total_com_imposto'
        DataSource = DataSource1
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 47
      Top = 158
      Width = 898
      Height = 16
      BandType = btFooter
      object RLSystemInfo3: TRLSystemInfo
        Left = 800
        Top = 0
        Width = 98
        Height = 16
        Align = faRightTop
        Text = 'Data:'
      end
    end
    object RLBand5: TRLBand
      Left = 47
      Top = 138
      Width = 898
      Height = 20
      BandType = btColumnFooter
      object RLLabel13: TRLLabel
        Left = 534
        Top = 0
        Width = 44
        Height = 16
        Caption = 'Total :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 592
        Top = 0
        Width = 153
        Height = 16
        DataField = 'total_com_imposto'
        DataSource = DataSource1
        DisplayMask = '###,###,##0.00'
        Info = riSum
        Text = ''
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.FDRelatorio
    Left = 416
    Top = 360
  end
end
