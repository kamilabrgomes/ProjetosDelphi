unit uAtendimentoDao;

interface

uses uAtendimentoModel, uConexao, System.SysUtils, System.Classes,Data.Win.ADODB, Data.DB;

type
  TAtendimentoDao = class
    private
      FConexao : TConexao;

    public
      constructor Create;
      function Incluir(AAtendimentoModel: TAtendimentoModel): Boolean;
      function Alterar(AAtendimentoModel: TAtendimentoModel): Boolean;
      function Excluir(AAtendimentoModel: TAtendimentoModel): Boolean;
      function GetId(AAutoIncrementar: Integer): Integer;
      function Obter: TADOQuery;
  end;

implementation

{ TAtendimentoDao }

uses uSistemaController;

function TAtendimentoDao.Alterar(AAtendimentoModel: TAtendimentoModel): Boolean;
var
  VQry: TADOQuery;
begin
  VQry := FConexao.CriarQry();
  try
    VQry.SQL.add('update Atendimento set Descricao = '+QuotedStr(AAtendimentoModel.Descricao)+' where (IDAtend = '+IntToStr(AAtendimentoModel.IDAtend)+')');
    VQry.ExecSQL;

    Result := True;
  finally
    VQry.Free;
  end;

end;

constructor TAtendimentoDao.Create;
begin
  FConexao := TSistemaController.GetInstancia().Conexao;
end;

function TAtendimentoDao.Excluir(AAtendimentoModel: TAtendimentoModel): Boolean;
var
  VQry: TADOQuery;
begin
  VQry := FConexao.CriarQry();
  try
    VQry.SQL.add('delete from Atendimento where (IDAtend = '+IntToStr(AAtendimentoModel.IDAtend)+')');
    VQry.ExecSQL;

    Result := True;
  finally
    VQry.Free;
  end;
end;

function TAtendimentoDao.GetId(AAutoIncrementar: Integer): Integer;
var
  VQry: TADOQuery;
begin
  VQry := FConexao.CriarQry();
  try
    VQry.SQL.add('select gen_id(gen_cliente_id, ' + IntToStr(AAutoIncrementar) + ' ) from rdb$database');
    VQry.Open;
    try
      Result := VQry.Fields[0].AsInteger;
    finally
      VQry.Close;
    end;
  finally
    VQry.Free;
  end;
end;

function TAtendimentoDao.Incluir(AAtendimentoModel: TAtendimentoModel): Boolean;
begin

end;

function TAtendimentoDao.Obter: TADOQuery;
begin

end;

end.
