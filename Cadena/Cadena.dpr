program Cadena;

uses
  Forms,
  UFPrincipal in 'UFPrincipal.pas' {frmPrincipal},
  UCCadena in 'UCCadena.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
