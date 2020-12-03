unit uCadPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, uPacienteController;

type
  TfrmCadPaciente = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ActionListPaciente: TActionList;
    actNovo: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPaciente: TfrmCadPaciente;

implementation

{$R *.dfm}

end.
