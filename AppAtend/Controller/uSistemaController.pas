unit uSistemaController;

interface

uses uConexao, System.SysUtils, uPacienteModel;

type
  TSistemaController = class
    private
      FConexao : TConexao;
      FPaciente: TPacienteModel;

      class var FInstancia: TSistemaController;
    public
      constructor Create;
      destructor Destroy; override;
      class function GetInstancia : TSistemaController;

      property Conexao : TConexao read FConexao write FConexao;
      property Paciente: TPacienteModel read FPaciente write FPaciente;
  end;
implementation

{ TSistemaController }

constructor TSistemaController.Create;
begin
  FConexao := TConexao.Create;
  //FPaciente := TPacienteModel.Create();

end;

destructor TSistemaController.Destroy;
begin
  FPaciente.Free;
  FConexao.Free;
  inherited;
end;

class function TSistemaController.GetInstancia: TSistemaController;
begin
  if not Assigned(Self.FInstancia) then
  begin
    Self.FInstancia := TSistemaController.Create();
  end;

  Result := Self.FInstancia;
end;

end.
