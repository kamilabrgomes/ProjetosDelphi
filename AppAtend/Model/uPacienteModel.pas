unit uPacienteModel;

interface

uses uTipos, Data.Win.ADODB, Data.DB;

type
  TPacienteModel = class
  private
    FAcao: TAcao;
    FCPF: String;
    FDtNasc: TDateTime;
    FSexo: String;
    FNome: String;

    procedure SetAcao(const Value: TAcao);
    procedure SetCPF(const Value: String);
    procedure SetDtNasc(const Value: TDateTime);
    procedure SetNome(const Value: String);
    procedure SetSexo(const Value: String);
  public
    function GetPaciente: TADOQuery;
    function Salvar: Boolean;

    property CPF : String read FCPF write SetCPF;
    property Nome : String read FNome write SetNome;
    property DtNasc : TDateTime read FDtNasc write SetDtNasc;
    property Sexo : String read FSexo write SetSexo;
    property Acao : TAcao read FAcao write SetAcao;
  end;

implementation

{ TPaciente }

uses uPacienteDao;

function TPacienteModel.GetPaciente: TADOQuery;
var
  VPacienteDao: TPacienteDao;
begin
  VPacienteDao := TPacienteDao.Create;
  try
    Result := VPacienteDao.GetPacientes;
  finally
    VPacienteDao.Free;
  end;

end;

function TPacienteModel.Salvar: Boolean;
var
  VPacienteDao: TPacienteDao;
begin
  Result := False;

  VPacienteDao := TPacienteDao.Create;
  try
    case FAcao of
      uTipos.tacIncluir: Result := VPacienteDao.Incluir(Self);
      uTipos.tacAlterar: Result := VPacienteDao.Alterar(Self);
      uTipos.tacExcluir: Result := VPacienteDao.Excluir(Self);
    end;
  finally
    VPacienteDao.Free;
  end;
end;

procedure TPacienteModel.SetAcao(const Value: TAcao);
begin
  FAcao := Value;
end;

procedure TPacienteModel.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

procedure TPacienteModel.SetDtNasc(const Value: TDateTime);
begin
  FDtNasc := Value;
end;

procedure TPacienteModel.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TPacienteModel.SetSexo(const Value: String);
begin
  FSexo := Value;
end;

end.
