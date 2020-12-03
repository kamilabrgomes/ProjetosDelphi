unit uPacienteDao;

interface

uses uPacienteModel, uConexao, System.SysUtils, System.Classes,Data.Win.ADODB, Data.DB;

type
  TPacienteDao = class
    private
      FConexao : TConexao;

    public
      constructor Create;
      function Incluir(APacienteModel: TPacienteModel): Boolean;
      function Alterar(APacienteModel: TPacienteModel): Boolean;
      function Excluir(APacienteModel: TPacienteModel): Boolean;
      function GetPacientes: TADOQuery;
  end;

implementation

{ TPacienteDao }


uses uSistemaController;

function TPacienteDao.Alterar(APacienteModel: TPacienteModel): Boolean;
var
  VQry: TADOQuery;
begin
  VQry := FConexao.CriarQry();
  try
    VQry.SQL.Clear;
    VQry.SQL.add('update Paciente set Nome = '+QuotedStr(APacienteModel.Nome)+' where (CPF = '+QuotedStr(APacienteModel.CPF)+')');
    VQry.ExecSQL;

    Result := True;
  finally
    VQry.Free;
  end;

end;

constructor TPacienteDao.Create;
begin
  FConexao := TSistemaController.GetInstancia().Conexao;
end;

function TPacienteDao.Excluir(APacienteModel: TPacienteModel): Boolean;
var
  VQry: TADOQuery;
begin
  VQry := FConexao.CriarQry();
  try
    VQry.SQL.Clear;
    VQry.SQL.add('delete from Paciente where (CPF = '+QuotedStr(APacienteModel.CPF)+')');
    VQry.ExecSQL;

    Result := True;
  finally
    VQry.Free;
  end;
end;

function TPacienteDao.Incluir(APacienteModel: TPacienteModel): Boolean;
var
  VQry: TADOQuery;
begin
  VQry := FConexao.CriarQry();
  try
    VQry.SQL.Clear;
    VQry.SQL.Add('insert into Paciente (CPF, Nome, DtNasc, Sexo) values ('+QuotedStr(APacienteModel.CPF)+','+
                                                                           QuotedStr(APacienteModel.Nome)+','+
                                                                           QuotedStr(DateToStr(APacienteModel.DtNasc))+','+
                                                                           QuotedStr(APacienteModel.Sexo)+')');
    VQry.ExecSQL;


    Result := True;
  finally
    VQry.Free;
  end;
end;

function TPacienteDao.GetPacientes: TADOQuery;
var
  VQry: TADOQuery;
begin

  VQry := FConexao.CriarQry();

  VQry.Close;
  VQry.SQL.Clear;
  VQry.SQL.Add('select CPF, Nome, DtNasc, Sexo from Paciente order by 1');
  VQry.Open;

  Result := VQry;
end;

end.
