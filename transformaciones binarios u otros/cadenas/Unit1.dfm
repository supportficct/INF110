object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 204
  ClientWidth = 347
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
  object Label1: TLabel
    Left = 96
    Top = 51
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 96
    Top = 112
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 56
    Top = 19
    Width = 217
    Height = 18
    Caption = 'CADENA_DE_CARACTERES'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -15
    Font.Name = 'Vladimir Script'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
  end
  object C: TEdit
    Left = 152
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object R: TEdit
    Left = 152
    Top = 109
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    Top = 168
    object menu1: TMenuItem
      Caption = 'menu'
      object contarvocales1: TMenuItem
        Caption = 'contar_vocales'
        OnClick = contarvocales1Click
      end
      object contarcarrepetid1: TMenuItem
        Caption = 'contar_car_repetid'
      end
      object invertircad1: TMenuItem
        Caption = 'invertir_cad'
        OnClick = invertircad1Click
      end
      object eliminarcar1: TMenuItem
        Caption = 'eliminar_car'
      end
      object insertarcar1: TMenuItem
        Caption = 'insertar_car'
      end
      object borrarentradas1: TMenuItem
        Caption = 'borrar_entradas'
      end
      object salir1: TMenuItem
        Caption = 'salir'
        OnClick = salir1Click
      end
    end
  end
end
