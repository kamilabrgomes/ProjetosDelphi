object frmCadAtendimentos: TfrmCadAtendimentos
  Left = 0
  Top = 0
  Caption = 'Atendimentos'
  ClientHeight = 517
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 40
    Width = 754
    Height = 477
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsAtendimentos
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
  object btnAlterar: TButton
    Left = 89
    Top = 8
    Width = 75
    Height = 25
    Action = actAlterar
    TabOrder = 2
  end
  object btnExcluir: TButton
    Left = 170
    Top = 8
    Width = 75
    Height = 25
    Action = actExcluir
    TabOrder = 3
  end
  object dsAtendimentos: TDataSource
    Left = 680
  end
  object ActionListAtend: TActionList
    Left = 592
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
