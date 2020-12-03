unit uAtendimentoModel;

interface

uses uTipos, Data.Win.ADODB, Data.DB;

type
  TAtendimentoModel = class
  private
    FAcao: TAcao;
    FDescricao: String;
    FDtAtend: TDateTime;
    FIDAtend: Integer;
    FCPFPaciente: String;

    procedure SetAcao(const Value: TAcao);
    procedure SetCPFPaciente(const Value: String);
    procedure SetDescricao(const Value: String);
    procedure SetDtAtend(const Value: TDateTime);
    procedure SetIDAtend(const Value: Integer);
  public
    function GetAtendimentoModel: TADOQuery;
    function Salvar: Boolean;
    function GetId(AAutoIncrementar: Integer): Integer;

    property IDAtend : Integer read FIDAtend write SetIDAtend;
    property DtAtend : TDateTime read FDtAtend write SetDtAtend;
    property CPFPaciente : String read FCPFPaciente write SetCPFPaciente;
    property Descricao : String read FDescricao write SetDescricao;
    property Acao : TAcao read FAcao write SetAcao;
  end;

implementation

{ TAtendimento }

uses uAtendimentoDao;

function TAtendimentoModel.GetAtendimentoModel: TADOQuery;
var
  VAtendimentoDao: TAtendimentoDao;
begin
  VAtendimentoDao := TAtendimentoDao.Create;
  try
    Result := VAtendimentoDao.GetAtendimentos;
  finally
    VAtendimentoDao.Free;
  end;
end;

function TAtendimentoModel.GetId(AAutoIncrementar: Integer): Integer;
var
  VAtendimentoDao: TAtendimentoDao;
begin
  VAtendimentoDao := TAtendimentoDao.Create;
  try
    Result := VAtendimentoDao.GetId(AAutoIncrementar);
  finally
    VAtendimentoDao.Free;
  end;
end;

function TAtendimentoModel.Salvar: Boolean;
var
  VAtendimentoDao: TAtendimentoDao;
begin
  Result := False;

  VAtendimentoDao := TAtendimentoDao.Create;
  try
    case FAcao of
      uTipos.tacIncluir: Result := VAtendimentoDao.Incluir(Self);
      uTipos.tacAlterar: Result := VAtendimentoDao.Alterar(Self);
      uTipos.tacExcluir: Result := VAtendimentoDao.Excluir(Self);
    end;
  finally
    VAtendimentoDao.Free;
  end;
end;

procedure TAtendimentoModel.SetAcao(const Value: TAcao);
begin
  FAcao := Value;
end;

procedure TAtendimentoModel.SetCPFPaciente(const Value: String);
begin
  FCPFPaciente := Value;
end;

procedure TAtendimentoModel.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TAtendimentoModel.SetDtAtend(const Value: TDateTime);
begin
  FDtAtend := Value;
end;

procedure TAtendimentoModel.SetIDAtend(const Value: Integer);
begin
  FIDAtend := Value;
end;

end.
