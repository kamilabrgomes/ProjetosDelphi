unit uPacienteController;

interface

uses
  uPacienteModel, System.SysUtils, Data.Win.ADODB, Data.DB;

type
  TPacienteController = class
  private
    FPacienteModel: TPacienteModel;

  public
    constructor Create;
    destructor Destroy; override;

    function Salvar: Boolean;
    function GetPacienteController: TADOQuery;

    property PacienteModel: TPacienteModel read FPacienteModel write FPacienteModel;
  end;

implementation

{ TClienteControl }

constructor TPacienteController.Create;
begin
  FPacienteModel := TPacienteModel.Create();
end;

destructor TPacienteController.Destroy;
begin
  FPacienteModel.Free;

  inherited;
end;

function TPacienteController.Obter: TADOQuery;
begin
  Result := FPacienteModel.Obter;
end;

function TPacienteController.Salvar: Boolean;
begin
  Result := FPacienteModel.Salvar;
end;

end.
