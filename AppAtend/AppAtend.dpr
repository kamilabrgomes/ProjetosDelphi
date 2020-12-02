program AppAtend;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uCadAtendimento in 'View\uCadAtendimento.pas' {frmCadAtendimentos},
  uCadPaciente in 'View\uCadPaciente.pas' {frmCadPaciente},
  uConexao in 'DAO\uConexao.pas',
  uSistemaController in 'Controller\uSistemaController.pas',
  uPacienteModel in 'Model\uPacienteModel.pas',
  uAtendimentoModel in 'Model\uAtendimentoModel.pas',
  uPacienteDao in 'DAO\uPacienteDao.pas',
  uAtendimentoDao in 'DAO\uAtendimentoDao.pas',
  uPacienteController in 'Controller\uPacienteController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
