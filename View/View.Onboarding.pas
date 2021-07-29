unit View.Onboarding;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts,
  System.Actions, FMX.ActnList,View.Login;

type
  TfrmOnboarding = class(TForm)
    TabControl: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    lytProximo: TLayout;
    Layout2: TLayout;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Layout3: TLayout;
    Image2: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Layout4: TLayout;
    Image3: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Layout5: TLayout;
    Image4: TImage;
    Label7: TLabel;
    btnVoltar: TSpeedButton;
    StyleBook1: TStyleBook;
    btnProximo: TSpeedButton;
    ActionList1: TActionList;
    actTab1: TChangeTabAction;
    actTab2: TChangeTabAction;
    actTab3: TChangeTabAction;
    actTab4: TChangeTabAction;
    lyt_botoes: TLayout;
    btnLogin: TSpeedButton;
    btnNovaConta: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovaContaClick(Sender: TObject);
  private
    procedure NavegacaoAba(cont:Integer);
  public
    { Public declarations }
  end;

var
  frmOnboarding: TfrmOnboarding;

implementation

{$R *.fmx}


procedure TfrmOnboarding.btnLoginClick(Sender: TObject);
begin
  if not Assigned(frmLogin) then
    Application.CreateForm(TfrmLogin,frmLogin);
  Application.MainForm := frmLogin;
  frmLogin.TabControl.ActiveTab := frmLogin.TabLogin;
  frmLogin.Show;
  Self.Close;
end;

procedure TfrmOnboarding.btnNovaContaClick(Sender: TObject);
begin
  if not Assigned(frmLogin) then
    Application.CreateForm(TfrmLogin,frmLogin);
  Application.MainForm := frmLogin;
  frmLogin.TabControl.ActiveTab := frmLogin.TabNovaConta;
  frmLogin.Show;
  Self.Close;
end;

procedure TfrmOnboarding.btnProximoClick(Sender: TObject);
begin
  NavegacaoAba(1);
end;

procedure TfrmOnboarding.btnVoltarClick(Sender: TObject);
begin
  NavegacaoAba(-1);
end;

procedure TfrmOnboarding.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
  Self := nil;
end;

procedure TfrmOnboarding.FormCreate(Sender: TObject);
begin
  TabControl.TabPosition := TTabPosition.None;
  TabControl.ActiveTab := TabItem1;
  lytProximo.Visible := True;
  lyt_botoes.Visible := False;
  NavegacaoAba(-1);
end;

procedure TfrmOnboarding.NavegacaoAba(cont: Integer);
begin
  if cont > 0 then
  begin
    case TabControl.TabIndex of
      0:actTab2.Execute;
      1:actTab3.Execute;
      2:actTab4.Execute;
    end;
  end
  else
  begin
    case TabControl.TabIndex of
      3:actTab3.Execute;
      2:actTab2.Execute;
      1:actTab1.Execute;
    end;
  end;

  btnVoltar.Visible := true;
  btnProximo.Visible := true;

  if TabControl.TabIndex = 0 then
  begin
    btnVoltar.Visible := False;
  end
  else if TabControl.TabIndex = 3then
  begin
    lyt_botoes.Visible := True;
    lytProximo.Visible := False;
  end;
end;

end.
