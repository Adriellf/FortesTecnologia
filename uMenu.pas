unit uMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBClient, MConnect;

type
  TfMenu = class(TForm)
    MainMenu1: TMainMenu;
    C1: TMenuItem;
    R1: TMenuItem;
    A1: TMenuItem;
    A2: TMenuItem;
    procedure A1Click(Sender: TObject);
    procedure A2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMenu: TfMenu;

implementation

uses uAbastecimento, uRelatorio;

{$R *.dfm}

procedure TfMenu.A1Click(Sender: TObject);
var
 vForm : Tform;
begin
  vForm := TfAbastecimento.Create(nil);
  vForm.ShowModal;
  vForm.FreeOnRelease;
end;

procedure TfMenu.A2Click(Sender: TObject);
begin
  FRelatorio.RLReport1.Preview();
end;

end.
