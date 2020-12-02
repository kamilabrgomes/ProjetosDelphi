object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Align = alClient
  AutoSize = True
  Caption = 'Atendimentos'
  ClientHeight = 350
  ClientWidth = 652
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 488
    Top = 8
    object Clientes1: TMenuItem
      Caption = 'Atendimentos'
      object Novo1: TMenuItem
        Action = actCadAtend
      end
    end
    object Clientes2: TMenuItem
      Caption = 'Clientes'
      object Cadastro1: TMenuItem
        Action = actCadPaciente
      end
    end
  end
  object ActionListPrincipal: TActionList
    Left = 408
    Top = 8
    object actCadPaciente: TAction
      Caption = 'Cadastro'
      OnExecute = actCadPacienteExecute
    end
    object actCadAtend: TAction
      Caption = 'Atendimentos'
      OnExecute = actCadAtendExecute
    end
  end
end
