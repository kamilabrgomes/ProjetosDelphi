unit uPacienteModel;

interface

type
  TPacienteModel = class
  private
    FCPF: String;
    FDtNasc: TDateTime;
    FSexo: String;
    FNome: String;

    procedure SetCPF(const Value: String);
    procedure SetDtNasc(const Value: TDateTime);
    procedure SetNome(const Value: String);
    procedure SetSexo(const Value: String);
  public
    constructor Create(aCPF:String);
    property CPF : String read FCPF write SetCPF;
    property Nome : String read FNome write SetNome;
    property DtNasc : TDateTime read FDtNasc write SetDtNasc;
    property Sexo : String read FSexo write SetSexo;
  end;

implementation

{ TPaciente }

constructor TPacienteModel.Create(aCPF: String);
begin
  FCPF := aCPF;
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
