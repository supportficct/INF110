unit UCSerie;

interface
Uses Sysutils;
Const
    MaxT = 1024;
Type
    TTermino = Array[1..MaxT] of Integer;
    Serie = Class
       Private
            NroTerminos : Word;
            Terminos : TTermino;
            TermActual : Word;
       Public
              Constructor Create;
              Function CantTerminos : Word;
              Procedure GenerarSerieX(N: Word);
              Procedure GenerarSerieY(N: Word);
              Function ObtenerTermino( p : word) : Integer;
              procedure GenerarSerieXX(n:word);
              function invertirdigitos(n:word):word;
              procedure GenerarserieAA(n:word);
              function tienetermrepetido : boolean;
              function buscartermino(p:word):boolean;
    end;

implementation

{ Serie }

function Serie.buscartermino(p: word): boolean;
var
sw: boolean;
t,i: integer;
begin
     t:=terminos[p] ;
     i:=p+1;
     while (i<=NroTerminos) and ( sw= false) do
          if t=terminos[i] then
          sw:= true   ;
     result:= sw;
end;

function Serie.CantTerminos: Word;
begin
     Result:=NroTerminos;
end;

constructor Serie.Create;
begin
     NroTerminos:=0;
     TermActual:=0;

end;

procedure Serie.GenerarserieAA(n: word);
var
t:word;
I: Integer;
begin
      t:=2;
      NroTerminos:=n;
      for I := 1 to n do
      begin
           terminos[i]:=t;
           t:=t+(invertirdigitos(t)mod 10);
      end;

end;

procedure Serie.GenerarSerieX(N: Word);
var
  I,t,r: Integer;
begin
     NroTerminos:=n;
     t:=1;
     r:=2;
     for I := 1 to n do
     Begin
          Terminos[i]:=t;
          t:=t+r;
          r:=r+1;
     end;
end;

procedure Serie.GenerarSerieXX(n: word);
var
  i: word;
begin
    NroTerminos:=n;
    for i := 1 to n do
           terminos[i]:=invertirdigitos(i*i);


end;

procedure Serie.GenerarSerieY(N: Word);
Var
    c,a,i : Integer;
    sw: Boolean;
begin
     NroTerminos:=n; 
     c:=1;
     a:=2;
     i:=1;
     sw:=False;
     while n>0 do
     begin
          if sw=true then
          begin
               Terminos[i]:=a;
               sw:=false;
          end
          else
          begin
               Terminos[i]:=c;
               c:=c-1;
               sw:=True;
          end;
          n:=n-1;
          i:=i+1;
     end;

end;

function Serie.invertirdigitos(n: word): word;
var
 r: word;
begin
    r:=0;
    while n>0 do
    begin
        r:=r*10+(n mod 10);
        n:=n div 10;
    end;
    result:=r;
end;

function Serie.ObtenerTermino(p: word): Integer;
begin
     if (P>0) And (P<=NroTerminos)then
         Result:=Terminos[P]
     else Raise Exception.Create('Error : Posicion fuera de rango..');

end;

function Serie.tienetermrepetido: boolean;
var
sw:boolean;
c,i: integer;
begin
     c:=1 ; sw:=false;
     while (i<=NroTerminos) and (sw = false)do
     begin
          if buscartermino(i)= true then
          sw:=true ;
          i:=i+1;

     end;
     result:=sw;

end;

end.
