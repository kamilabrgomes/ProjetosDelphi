unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, System.Actions,
  Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, uCadPaciente, uAtendimento
  ;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Clientes1: TMenuItem;
    Clientes2: TMenuItem;
    Cadastro1: TMenuItem;
    Novo1: TMenuItem;
    ActionListPrincipal: TActionList;
    actCadPaciente: TAction;
    actNovoAtend: TAction;
    procedure actCadPacienteExecute(Sender: TObject);
    procedure actNovoAtendExecute(Sender: TObject);
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
  frmCadPaciente.Show;
end;

procedure TfrmPrincipal.actNovoAtendExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmAtendimentos, frmAtendimentos);
  frmAtendimentos.Show;
end;

end.
