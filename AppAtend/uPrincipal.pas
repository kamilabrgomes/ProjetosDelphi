unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, System.Actions,
  Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, uCadPaciente, uCadAtendimento,
  Data.Win.ADODB, Vcl.StdCtrls, uConexao, uSistemaController, Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Clientes1: TMenuItem;
    Clientes2: TMenuItem;
    Cadastro1: TMenuItem;
    Novo1: TMenuItem;
    ActionListPrincipal: TActionList;
    actCadPaciente: TAction;
    actCadAtend: TAction;
    StatusBar1: TStatusBar;
    procedure actCadPacienteExecute(Sender: TObject);
    procedure actCadAtendExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.actCadPacienteExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmCadPaciente, frmCadPaciente);
  try
    frmCadPaciente.ShowModal;
  finally
    frmCadPaciente.Release;
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  TSistemaController.GetInstancia();

end;

procedure TfrmPrincipal.actCadAtendExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmCadAtendimentos, frmCadAtendimentos);
  try
    frmCadAtendimentos.ShowModal;
  finally
    frmCadAtendimentos.Release;
  end;
end;

end.
