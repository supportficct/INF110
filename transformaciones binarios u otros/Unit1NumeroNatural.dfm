object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 247
  ClientWidth = 422
  Color = clActiveCaption
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
    Left = 72
    Top = 1
    Width = 181
    Height = 19
    Caption = 'NUMEROS NATURALES'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 43
    Width = 43
    Height = 13
    Caption = 'NUMERO'
  end
  object Label3: TLabel
    Left = 31
    Top = 96
    Width = 59
    Height = 13
    Caption = 'RESULTADO'
  end
  object NU: TEdit
    Left = 96
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object R: TEdit
    Left = 96
    Top = 93
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    Left = 288
    Top = 152
    object OPERACIONES1: TMenuItem
      Caption = 'OPERACIONES'
      object CONTARDIGITOS1: TMenuItem
        Caption = 'CONTAR DIGITOS'
        OnClick = CONTARDIGITOS1Click
      end
      object CONTARPARES1: TMenuItem
        Caption = 'CONTAR PARES'
        OnClick = CONTARPARES1Click
      end
      object SUMARDIGITOS1: TMenuItem
        Caption = 'SUMAR DIGITOS'
        OnClick = SUMARDIGITOS1Click
      end
      object BUSCARDIGITOMENOR1: TMenuItem
        Caption = 'BUSCARDIGITOMENOR'
        OnClick = BUSCARDIGITOMENOR1Click
      end
      object BUSCARDIGITOMAYOR1: TMenuItem
        Caption = 'BUSCARDIGITOMAYOR'
        OnClick = BUSCARDIGITOMAYOR1Click
      end
      object ORDENAR1: TMenuItem
        Caption = 'ORDENAR'
      end
      object BINARIO1: TMenuItem
        Caption = 'BINARIO'
        OnClick = BINARIO1Click
      end
      object OCTAL1: TMenuItem
        Caption = 'OCTAL'
        OnClick = OCTAL1Click
      end
      object HEXADECIMAL1: TMenuItem
        Caption = 'HEXADECIMAL'
        OnClick = HEXADECIMAL1Click
      end
      object BORRAR1: TMenuItem
        Caption = 'BORRAR'
        OnClick = BORRAR1Click
      end
      object SALIR1: TMenuItem
        Caption = 'SALIR'
        OnClick = SALIR1Click
      end
    end
  end
end
