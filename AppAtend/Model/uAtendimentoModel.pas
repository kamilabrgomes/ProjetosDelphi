unit uAtendimentoModel;

interface

type
  TAtendimentoModel = class
  private
    FDescricao: String;
    FDtAtend: TDateTime;
    FIDAtend: Integer;
    FCPFPaciente: String;
    procedure SetCPFPaciente(const Value: String);
    procedure SetDescricao(const Value: String);
    procedure SetDtAtend(const Value: TDateTime);
    procedure SetIDAtend(const Value: Integer);
    public
      property IDAtend : Integer read FIDAtend write SetIDAtend;
      property DtAtend : TDateTime read FDtAtend write SetDtAtend;
      property CPFPaciente : String read FCPFPaciente write SetCPFPaciente;
      property Descricao : String read FDescricao write SetDescricao;
  end;

implementation

{ TAtendimento }

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
