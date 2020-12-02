program AppAtend;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uCadPaciente in 'uCadPaciente.pas' {frmCadPaciente},
  uAtendimento in 'uAtendimento.pas' {frmAtendimentos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmAtendimentos, frmAtendimentos);
  Application.Run;
end.
