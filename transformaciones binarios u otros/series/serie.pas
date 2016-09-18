unit serie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    series: TMenuItem;
    serie11: TMenuItem;
    n: TEdit;
    r: TEdit;
    salir1: TMenuItem;
    procedure salir1Click(Sender: TObject);
    procedure serie11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.salir1Click(Sender: TObject);
begin
close();
end;

procedure TForm1.serie11Click(Sender: TObject);
var
x,c,g,s:integer;
y:string;
begin
   x:=StrToInt(n.Text);
   c:=0;s:=1;g:=3;y:='';
    while (c<x) do
     begin
       ShowMessage(IntToStr(s));
       y:=y+IntToStr(s)+',';
       s:=s+g;
       g:=g+2;
       c:=c+1;
     end;
     r.Text:=y;
end;

end.
