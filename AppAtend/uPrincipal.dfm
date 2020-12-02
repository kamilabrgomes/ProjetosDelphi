object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
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
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 568
    Top = 8
    object Clientes1: TMenuItem
      Caption = 'Atendimentos'
      object Novo1: TMenuItem
        Action = actNovoAtend
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
    object actNovoAtend: TAction
      Caption = 'Novo'
      OnExecute = actNovoAtendExecute
    end
  end
end
