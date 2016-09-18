object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 206
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object n: TEdit
    Left = 144
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object r: TEdit
    Left = 144
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object series: TMenuItem
      Caption = 'series'
      object serie11: TMenuItem
        Caption = 'serie_1'
        OnClick = serie11Click
      end
      object salir1: TMenuItem
        Caption = 'salir'
        OnClick = salir1Click
      end
    end
  end
end
