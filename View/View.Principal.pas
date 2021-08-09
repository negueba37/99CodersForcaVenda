unit View.Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.TabControl, System.Actions, FMX.ActnList,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    lytAba: TLayout;
    lytPedido: TLayout;
    lytCliente: TLayout;
    lytNotificacao: TLayout;
    lytMais: TLayout;
    imgPedidos: TImage;
    imgClientes: TImage;
    imgNotificacao: TImage;
    imgMais: TImage;
    TabControl: TTabControl;
    Circle: TCircle;
    tabPedidos: TTabItem;
    tabClientes: TTabItem;
    tabNotificacoes: TTabItem;
    tabMais: TTabItem;
    ActionList: TActionList;
    actPedido: TChangeTabAction;
    actCliente: TChangeTabAction;
    actNotificacao: TChangeTabAction;
    actMais: TChangeTabAction;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure imgPedidosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure SelecionaTab(tab:TImage);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  TabControl.TabPosition := TTabPosition.None;
  TabControl.ActiveTab := tabPedidos;
end;

procedure TfrmPrincipal.imgPedidosClick(Sender: TObject);
begin
  SelecionaTab(TImage(Sender));
end;

procedure TfrmPrincipal.SelecionaTab(tab:TImage);
begin
  imgPedidos.Opacity := 0.4;
  imgClientes.Opacity := 0.4;
  imgNotificacao.Opacity := 0.4;
  imgMais.Opacity := 0.4;

  tab.Opacity := 1;

  case tab.Tag of
    1:actPedido.Execute;
    2:actCliente.Execute;
    3:actNotificacao.Execute;
    4:actMais.Execute;
  end;

end;

end.
