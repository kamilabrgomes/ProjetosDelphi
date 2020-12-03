unit uCadPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, uPacienteController, Data.Win.ADODB,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmCadPaciente = class(TForm)
    dsPacientes: TDataSource;
    DBGridPacientes: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ActionListPaciente: TActionList;
    actNovo: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    edNome: TEdit;
    lbCPF: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dtpNasc: TDateTimePicker;
    rbSexo: TRadioGroup;
    meCPF: TMaskEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure CarregarPacientes;
  public
    { Public declarations }
  end;

var
  frmCadPaciente: TfrmCadPaciente;

implementation

{$R *.dfm}

{ TfrmCadPaciente }

procedure TfrmCadPaciente.CarregarPacientes;
var
  vPacienteController : TPacienteController;
  vQry : TADOQuery;
begin
  vPacienteController := TPacienteController.Create;
  try
    vQry := vPacienteController.GetPacienteController;
    try
      dsPacientes.DataSet := vQry;
    finally

    end;
  finally
    FreeAndNil(vPacienteController);
  end;
end;

procedure TfrmCadPaciente.FormShow(Sender: TObject);
begin
  CarregarPacientes;
end;

end.
