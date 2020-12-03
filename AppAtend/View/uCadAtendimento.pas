unit uCadAtendimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, uAtendimentoController;

type
  TfrmCadAtendimentos = class(TForm)
    DBGrid1: TDBGrid;
    dsAtendimentos: TDataSource;
    Button1: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    ActionListAtend: TActionList;
    actNovo: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure CarregarAtendimentos;
  public
    { Public declarations }
  end;

var
  frmCadAtendimentos: TfrmCadAtendimentos;

implementation

{$R *.dfm}

{ TfrmCadAtendimentos }

procedure TfrmCadAtendimentos.CarregarAtendimentos;
var
  vAtendimentoController : TAtendimentoController;
  vQry : TADOQuery;
begin
  vAtendimentoController := TAtendimentoController.Create;
  try
    vQry := vAtendimentoController.GetAtendimentoController;
    try
      dsAtendimentos.DataSet := vQry;
    finally

    end;
  finally
    FreeAndNil(vAtendimentoController);
  end;
end;

procedure TfrmCadAtendimentos.FormShow(Sender: TObject);
begin
  CarregarAtendimentos;
end;

end.
