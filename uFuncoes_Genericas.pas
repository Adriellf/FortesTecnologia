unit uFuncoes_Genericas;

interface

uses
  SysUtils,Vcl.StdCtrls,uDataModule,uClasseGenerica;

 function SomenteNumeros(sTexto: String): String;
 function Empty(sPar1 : String):boolean;
 procedure carregaCombo(ComboBox : TComboBox);
 function retonaidBombas(nome : string): integer;
 function salvarVendas (cVendas : TGenerica) : string;

implementation

uses
  System.Classes;



 function SomenteNumeros(sTexto: String): String;
  var
     i : Integer;
  begin
     Result := '';
     if Empty(sTexto) then
       Exit;

     for i := 0 to Length(sTexto) do
       if sTexto[i] in ['0'..'9'] then
         Result := Result + stexto[i];
  end;

  function Empty(sPar1 : String):boolean;
  begin
    result := (sPar1 = '');
  end;

  procedure carregaCombo(ComboBox : TComboBox);
  var
   DataModule : TDataModule1;
  begin
    DataModule:= TDataModule1.Create(nil);
    with DataModule,FDBombas do
    begin
      FDConnection1.Open();
      open();
      ComboBox.Items.Clear;
      while not eof  do
      begin
         ComboBox.Items.Add(FieldByName('nome').AsString);
        next;
      end;
    end;

    DataModule.FreeOnRelease;
  end;

  function retonaidBombas(nome : string): integer;
  var
   DataModule : TDataModule1;
   retorno : Integer;
  begin
    DataModule:= TDataModule1.Create(nil);
    with DataModule,FDGenerico do
    begin
      FDConnection1.Open();
      sql.Clear;
      sql.Add('select id from bombas where nome ='+ QuotedStr(nome));
      open;
      retorno := FieldByName('id').AsInteger;
      FDConnection1.Close;
      FDConnection1.Close;
    end;

    Result := Retorno;
    DataModule.FreeOnRelease;
  end;


  function salvarVendas (cVendas : TGenerica) : string;
  var
   DataModule : TDataModule1;
  begin
    DataModule:= TDataModule1.Create(nil);
    try
      with DataModule,FDGenerico do
      begin
        FDConnection1.Open();
        sql.Clear;
        sql.Add('insert into vendas (data,vl_imposto,bombas_id,valor,qtd_litros)');
        sql.Add(' values ('+QuotedStr(FormatDateTime('YYY-MM-DD', Now)) +',');
        sql.add( QuotedStr(cvendas.vl_imposto) +','+ IntToStr(cVendas.bombas_id) +',');
        sql.add( QuotedStr(cVendas.valor)      +','+ QuotedStr(cvendas.qtd_litros) +')');
        ExecSQL;
        close;
        FDConnection1.Close;
        result := 'Registro Salvo com Sucesso!!!';
      end;
    except on E: exception do
      begin
        Result := E.Message;
      end;
    end;
  end;
end.