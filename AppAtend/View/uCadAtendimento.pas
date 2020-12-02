unit uCadAtendimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadAtendimentos: TfrmCadAtendimentos;

implementation

{$R *.dfm}

end.
