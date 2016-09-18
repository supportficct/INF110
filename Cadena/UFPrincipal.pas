unit UFPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,UCCadena, Menus, StdCtrls;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadena1: TMenuItem;
    Longitud1: TMenuItem;
    AdicionarCaracter1: TMenuItem;
    ModificarCaracter1: TMenuItem;
    InsertarCaracter1: TMenuItem;
    EliminarCaracter1: TMenuItem;
    ObtenerCaracter1: TMenuItem;
    Label1: TLabel;
    Edit1: TEdit;
    ObtenerCadena1: TMenuItem;
    AdicionarCadena1: TMenuItem;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    CadenaMasLarga1: TMenuItem;
    SiguientePalabra1: TMenuItem;
    Cadenasnuevas1: TMenuItem;
    CantidaddeVocales1: TMenuItem;
    //procedure FormatoTitulo1Click(Sender: TObject);
    procedure CantidaddeVocales1Click(Sender: TObject);
    procedure ModificarCaracter1Click(Sender: TObject);
    procedure AdicionarCadena1Click(Sender: TObject);
    procedure ObtenerCadena1Click(Sender: TObject);
    procedure AdicionarCaracter1Click(Sender: TObject);
    procedure Longitud1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    C : Cadena;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.AdicionarCadena1Click(Sender: TObject);
begin
     C.AddString(Edit1.Text);
end;

procedure TfrmPrincipal.AdicionarCaracter1Click(Sender: TObject);
begin
     C.AddChar(Edit1.Text[1]);
end;

procedure TfrmPrincipal.CantidaddeVocales1Click(Sender: TObject);
begin
       label1.caption:=IntToStr(c.CantVocales(Edit1.Text[1]))
end;

//procedure TfrmPrincipal.FormatoTitulo1Click(Sender: TObject);
//begin
    //label1.Caption:=C.Formatotitulo(edit1.text[1]);
//end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
     C := Cadena.Create;
end;

procedure TfrmPrincipal.Longitud1Click(Sender: TObject);
begin
     Label1.Caption :=IntToStr(C.Long);
end;

procedure TfrmPrincipal.ModificarCaracter1Click(Sender: TObject);
begin
     C.ModChar(StrToInt(edit2.Text),edit1.text[1]);
end;

procedure TfrmPrincipal.ObtenerCadena1Click(Sender: TObject);
begin
     Label1.Caption:=C.GetString;
end;

end.
