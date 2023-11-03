program Projeto_Abastecimento;

uses
  Forms,
  uMenu in 'uMenu.pas' {fMenu},
  uAbastecimento in 'uAbastecimento.pas' {fAbastecimento},
  uFuncoes_Genericas in 'uFuncoes_Genericas.pas',
  uDataModule in 'uDataModule.pas' {DataModule1: TDataModule},
  uClasseGenerica in 'uClasseGenerica.pas',
  uRelatorio in 'uRelatorio.pas' {FRelatorio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMenu, fMenu);
  Application.CreateForm(TfAbastecimento, fAbastecimento);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFRelatorio, FRelatorio);
  Application.Run;
end.
