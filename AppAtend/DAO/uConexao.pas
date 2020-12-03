unit uConexao;

interface

uses
  System.SysUtils, System.Classes,Data.Win.ADODB, Data.DB;

type
  TConexao = class

  private
    ADOConnection: TADOConnection;

    procedure ConfigurarConexao;
  public
    { Public declarations }
    constructor Create;
    destructor Destroy; override;

    function getConexao: TADOConnection;
    function CriarQry: TADOQuery;
  end;

  const
     CONECT_FILE   : string = 'C:\Projetos\ProjetosDelphi\AppAtend\DAO\conexao.udl';
     CONECT_STRING : string = 'FILE NAME=C:\Projetos\ProjetosDelphi\AppAtend\DAO\conexao.udl';

implementation

procedure TConexao.ConfigurarConexao;
begin
  ADOConnection.ConnectionString := CONECT_STRING;
  ADOConnection.Provider         := CONECT_FILE;
  ADOConnection.KeepConnection   := True;
  ADOConnection.LoginPrompt      := False;
  ADOConnection.Connected        := True;

end;

constructor TConexao.Create;
begin
  ADOConnection := TADOConnection.Create(nil);

  self.ConfigurarConexao();
end;

function TConexao.CriarQry: TADOQuery;
var
  VQry : TADOQuery;
begin
  VQry := TADOQuery.Create(nil);
  VQry.Connection := ADOConnection;


  result := VQry;
end;

destructor TConexao.Destroy;
begin
  ADOConnection.Free;
  inherited;
end;

function TConexao.getConexao: TADOConnection;
begin
  result := ADOConnection;

end;

end.
