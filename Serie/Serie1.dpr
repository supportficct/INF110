program Serie1;

uses
  Forms,
  UFPrincipal in 'UFPrincipal.pas' {frmPrincipal},
  UCSerie in 'UCSerie.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
