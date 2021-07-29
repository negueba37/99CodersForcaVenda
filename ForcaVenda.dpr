program ForcaVenda;

uses
  System.StartUpCopy,
  FMX.Forms,
  View.Onboarding in 'View\View.Onboarding.pas' {frmOnboarding},
  View.Login in 'View\View.Login.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmOnboarding, frmOnboarding);
  Application.Run;
end.
