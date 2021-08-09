program ForcaVenda;

uses
  System.StartUpCopy,
  FMX.Forms,
  View.Onboarding in 'View\View.Onboarding.pas' {frmOnboarding},
  View.Login in 'View\View.Login.pas' {frmLogin},
  View.Principal in 'View\View.Principal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmOnboarding, frmOnboarding);
  Application.Run;
end.
