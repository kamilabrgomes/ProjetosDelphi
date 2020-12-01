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
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 584
    Top = 48
    object Clientes1: TMenuItem
      Caption = 'Atendimentos'
      object Novo1: TMenuItem
        Caption = 'Novo'
      end
    end
    object Clientes2: TMenuItem
      Caption = 'Clientes'
      object Cadastro1: TMenuItem
        Caption = 'Cadastro'
      end
    end
  end
end
