object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'SERIE'
  ClientHeight = 310
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SG: TStringGrid
    Left = 8
    Top = 0
    Width = 320
    Height = 49
    ColCount = 1
    DefaultColWidth = 32
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 80
    Top = 120
    object Serie1: TMenuItem
      Caption = 'Serie'
      object GenearserieX1: TMenuItem
        Caption = 'Genear serie X'
        OnClick = GenearserieX1Click
      end
      object GenerarserieY1: TMenuItem
        Caption = 'Generar serie Y'
        OnClick = GenerarserieY1Click
      end
      object Generarseriexx1: TMenuItem
        Caption = 'Generar serie xx'
        OnClick = Generarseriexx1Click
      end
      object GenerarserieAA1: TMenuItem
        Caption = 'Generar serie AA'
        OnClick = GenerarserieAA1Click
      end
    end
  end
end
