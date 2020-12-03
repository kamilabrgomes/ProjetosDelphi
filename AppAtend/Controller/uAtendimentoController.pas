unit uAtendimentoController;

interface

uses
  uAtendimentoModel, System.SysUtils, Data.Win.ADODB, Data.DB;

type
  TAtendimentoController = class
  private
    FAtendimentoModel: TAtendimentoModel;

  public
    constructor Create;
    destructor Destroy; override;

    function Salvar: Boolean;
    function GetAtendimentoController: TADOQuery;

    property AtendimentoModel: TAtendimentoModel read FAtendimentoModel write FAtendimentoModel;
  end;

implementation

{ TClienteControl }

constructor TAtendimentoController.Create;
begin
  FAtendimentoModel := TAtendimentoModel.Create();
end;

destructor TAtendimentoController.Destroy;
begin
  FAtendimentoModel.Free;

  inherited;
end;

function TAtendimentoController.GetAtendimentoController: TADOQuery;
begin
  Result := FAtendimentoModel.GetAtendimentoModel;
end;

function TAtendimentoController.Salvar: Boolean;
begin
  Result := FAtendimentoModel.Salvar;
end;

end.
