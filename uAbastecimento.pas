unit uAbastecimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Mask, uDataModule;

type
  TfAbastecimento = class(TForm)
    dtAbastecimento: TDateTimePicker;
    label1: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    edtLitros: TMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    edtValor: TMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edtValorExit(Sender: TObject);
    procedure edtLitrosExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAbastecimento: TfAbastecimento;

implementation

uses uFuncoes_Genericas, uClasseGenerica;

{$R *.dfm}

procedure TfAbastecimento.Button1Click(Sender: TObject);
var
  cVendas : TGenerica;
begin
  cVendas            := TGenerica.Create;
  cvendas.bombas_id  := retonaidBombas(ComboBox1.Text);
  cvendas.vl_imposto := '13';
  cvendas.valor      := edtValor.Text;
  cVendas.qtd_litros := edtLitros.Text;

  ShowMessage(salvarVendas(cVendas));

  cVendas.Free;
end;

procedure TfAbastecimento.edtLitrosExit(Sender: TObject);
begin
  if not empty(edtLitros.Text) then
    edtLitros.Text := FormatFloat('#,##0.00', StrToFloat(edtLitros.Text));
end;

procedure TfAbastecimento.edtValorExit(Sender: TObject);
begin
  if not empty(edtValor.Text) then
    edtValor.Text := FormatFloat('#,##0.00', StrToFloat(edtValor.Text));
end;

procedure TfAbastecimento.FormCreate(Sender: TObject);
begin
  dtAbastecimento.Date := Date();
  carregaCombo(ComboBox1);
end;



end.
