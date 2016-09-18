unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    C: TEdit;
    R: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MainMenu1: TMainMenu;
    menu1: TMenuItem;
    contarvocales1: TMenuItem;
    contarcarrepetid1: TMenuItem;
    invertircad1: TMenuItem;
    eliminarcar1: TMenuItem;
    insertarcar1: TMenuItem;
    borrarentradas1: TMenuItem;
    salir1: TMenuItem;
    procedure invertircad1Click(Sender: TObject);
    procedure contarvocales1Click(Sender: TObject);
    procedure salir1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.contarvocales1Click(Sender: TObject);
var
 n,x,i:integer;
 s:string;
 const vocales:set of char= ['A','E','I','O','U'];
begin
 x:=0;
 s:='';s:=c.Text;
 n:=Length(s);
 for i:=1 to n do
   if (upcase(s[i])in vocales) then x:=x+1;
   R.Text:=IntToStr(x);

end;

procedure TForm1.invertircad1Click(Sender: TObject);
var
 n,i,j:integer;
 cad:string;
 aux:string[1];
begin
 i:=1;
 cad:=c.Text;aux:='';
 n:=Length(cad); j:=n;
 while (i<j) do
  begin
     aux:=cad[i];
     cad[i]:=cad[j];
     cad[j]:=aux[1];
     inc(i);dec(j);
  end;
   R.Text:=cad;
end;

procedure TForm1.salir1Click(Sender: TObject);
begin
close();
end;

end.
