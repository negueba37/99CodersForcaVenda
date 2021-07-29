unit View.Login;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts, FMX.Edit,
  System.Actions, FMX.ActnList;

type
  TfrmLogin = class(TForm)
    TabControl: TTabControl;
    TabLogin: TTabItem;
    TabNovaConta: TTabItem;
    StyleBook1: TStyleBook;
    Image1: TImage;
    lblCriarConta: TLabel;
    Layout1: TLayout;
    Image2: TImage;
    Rectangle1: TRectangle;
    edtEmail: TEdit;
    Rectangle2: TRectangle;
    edtSenha: TEdit;
    btnNovaConta: TSpeedButton;
    Image3: TImage;
    Label1: TLabel;
    Layout2: TLayout;
    Image4: TImage;
    Rectangle3: TRectangle;
    edtCadNome: TEdit;
    Rectangle4: TRectangle;
    edtCadEmail: TEdit;
    SpeedButton1: TSpeedButton;
    Rectangle5: TRectangle;
    edtCadSenha: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    ActionList: TActionList;
    actLogin: TChangeTabAction;
    actNovaConta: TChangeTabAction;
    procedure FormCreate(Sender: TObject);
    procedure lblCriarContaClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.fmx}

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  TabControl.TabPosition:= TTabPosition.None;
  TabControl.TabIndex := 0;
end;

procedure TfrmLogin.Label1Click(Sender: TObject);
begin
  actLogin.Execute;
end;

procedure TfrmLogin.lblCriarContaClick(Sender: TObject);
begin
  actNovaConta.Execute;
end;

end.
