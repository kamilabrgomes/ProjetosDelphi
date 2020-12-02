unit uAtendimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmAtendimentos = class(TForm)
    DBGrid1: TDBGrid;
    dsAtendimentos: TDataSource;
    Button1: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    ActionListAtend: TActionList;
    actNovo: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtendimentos: TfrmAtendimentos;

implementation

{$R *.dfm}

end.
