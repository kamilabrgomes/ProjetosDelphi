object frmCadPaciente: TfrmCadPaciente
  Left = 0
  Top = 0
  Caption = 'Cadastro de Pacientes'
  ClientHeight = 384
  ClientWidth = 683
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 39
    Width = 683
    Height = 345
    Align = alBottom
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Action = actNovo
    TabOrder = 1
  end
  object Button2: TButton
    Left = 89
    Top = 8
    Width = 75
    Height = 25
    Action = actAlterar
    TabOrder = 2
  end
  object Button3: TButton
    Left = 170
    Top = 8
    Width = 75
    Height = 25
    Action = actExcluir
    TabOrder = 3
  end
  object DataSource1: TDataSource
    Left = 616
    Top = 8
  end
  object ActionListPaciente: TActionList
    Left = 552
    Top = 8
    object actNovo: TAction
      Caption = 'Novo'
    end
    object actAlterar: TAction
      Caption = 'Alterar'
    end
    object actExcluir: TAction
      Caption = 'Excluir'
    end
  end
end
