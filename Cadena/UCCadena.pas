unit UCCadena;

interface
Uses SysUtils;
Const
    MaxC = 1024;
    separadores:set of Char= [' ',',',':',';',':'];
    alfanumerico:set of char=['A','B','C','D','E','F','G','H','I','J','K','L','M','N','�','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','�','o','p','q','r','s','t','u','v','w','x','y','z','1','2','3','4','5','6','7','8','9','0'];
    vocales: set of char =['a','e','i','o','u','A','E','I','U','O','�','�','�','�','�','�','�','�','�','�'];
    alfabeto:set of char =['A','B','C','D','E','F','G','H','I','J','K','L','M','N','�','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','�','o','p','q','r','s','t','u','w','x','y','z','�','�','�','�','�','�','�','�','�','�'];
    alfabetominuscula: set of char =['a','b','c','d','e','f','g','h','i','j','k','l','m','n','�','o','p','q','r','s','t','u','v','w','x','y','z','�','�','�','�','�'];
    alfabetomayuscula: set of char =['A','B','C','D','E','F','G','H','I','J','K','L','M','N','�','O','P','Q','R','S','T','U','V','W','X','Y','Z','�','�','�','�','�'];
Type
    TCaracter = Array[1..MaxC] of Char;
    Cadena = Class
      private
             Longitud : Word;
             Caracteres : TCaracter;
      public
            Constructor Create;
            Function Long : Word;
            Function GetChar( P : Word) : Char;
            Procedure AddChar( C : Char);
            Procedure DelChar( P : Word);
            Procedure InsChar( P : Word ; C : Char);
            Procedure ModChar( P : Word ; C : Char);
            Function GetString : String;
            Procedure AddString ( S : String);
            function CadLarga :string;
            function SiguientePalabra(var i:word):string;
            function CantVocales(p:string):integer;
            //procedure FormatoTitulo(p:word);
    end;

implementation

{ Cadena }

procedure Cadena.AddChar(C: Char);
begin
     Inc(Longitud);
     Caracteres[Longitud]:=C;
end;

procedure Cadena.AddString(S: String);
Var
    i : Word;
begin
     Longitud:=Length(S);
     for i:=1 to Longitud do
        Caracteres[i]:=S[i];
end;




function Cadena.CadLarga: string;
var
   i:word;
   PalM:string;
   pal:string;
begin
     while (i<=Longitud) do
     i:=i+1;
     pal:='';
     begin
        pal:=siguientepalabra(i);
        if Length (pal)> Length (palM) then
        palM:=pal;

     end;
     Result:=palM;

end;

function Cadena.CantVocales(p: string): integer;
var
   i,c:word;
begin
     i:= 1;
     c:= 0;
     while i<=Longitud do
     begin
          if (Caracteres[i]in vocales ) then
          c:=c+1;
          i:=i+1;
     end;
result:= c;
end;



constructor Cadena.Create;
begin
     Longitud:=0;
end;

procedure Cadena.DelChar(P: Word);
var
  I: Word;
begin
     if (P>0) And (P<=Longitud) then
     Begin
           for I := P to Longitud- 1 do
              Caracteres[i]:=Caracteres[i+1];
           Dec(Longitud);
     end
     else Raise Exception.Create('Error posicion fuera de rango');
end;

//procedure Cadena.FormatoTitulo(p: word);
//var
   //i,n:word;
//begin
    //i:=1;
    //n:=longitud;
    //while i<=n do
    //while ((Caracteres[i])= ' ') and (i<=n) do
         //i:=i+1;
    //if((Caracteres[i] in alfabetominuscula)) then
      //    Caracteres[i]:= chr(ord(caracteres[i])-32);
        //  i:=i+1;
          // while (Caracteres[i]<>' ') and (i<=n) do
           //if (Caracteres[i] in alfabetomayuscula) then
           //Caracteres[i]:= chr(ord(caracteres[i])+32);
           //begin
           //i:=i+1;
           //end;

//end;

function Cadena.GetChar(P: Word): Char;
begin
     if (P>0) And (P<=Longitud) then
     Begin
          Result:=Caracteres[P];
     end
     else Raise Exception.Create('Error posicion fuera de rango');
end;

function Cadena.GetString: String;
Var
    S : String;
  I: Integer;
begin
     S:='';
     for I := 1 to Longitud do
        S:=S+Caracteres[i];
     result:=s;
end;

procedure Cadena.InsChar(P: Word; C: Char);
Var
  I : Word;
begin
     if (P>0) And (P<=Longitud) then
     Begin
          Inc(Longitud);
          for I := Longitud Downto P+ 1 do
              Caracteres[i]:=Caracteres[i-1];
          Caracteres[P]:=C;
     end
     else Raise Exception.Create('Error posicion fuera de rango');
end;

function Cadena.Long: Word;
begin
     Result:=Longitud;
end;

procedure Cadena.ModChar(P: Word; C: Char);
begin
     if (P>0) And (P<=Longitud) then
     Begin
          Caracteres[P]:=C;
     end
     else Raise Exception.Create('Error posicion fuera de rango');
end;

function Cadena.SiguientePalabra(var i: word): string;
var
   pal:string;
begin
     while (i<=Longitud)and (caracteres[i] in separadores) do
     pal:='';
     while (i<=Longitud) and (caracteres[i] in alfanumerico ) do
     begin
         pal:= pal + caracteres[i];
         i:=i+1;
     end;
     result:=pal;
end;

end.
