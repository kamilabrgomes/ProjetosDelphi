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
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbCPF: TLabel
    Left = 24
    Top = 11
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'CPF'
  end
  object Label2: TLabel
    Left = 28
    Top = 38
    Width = 27
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 291
    Top = 11
    Width = 68
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data de Nasc.'
  end
  object DBGridPacientes: TDBGrid
    Left = 0
    Top = 136
    Width = 683
    Height = 248
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsPacientes
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 8
    Top = 105
    Width = 75
    Height = 25
    Action = actNovo
    TabOrder = 1
  end
  object Button2: TButton
    Left = 89
    Top = 105
    Width = 75
    Height = 25
    Action = actAlterar
    TabOrder = 2
  end
  object Button3: TButton
    Left = 170
    Top = 105
    Width = 75
    Height = 25
    Action = actExcluir
    TabOrder = 3
  end
  object edNome: TEdit
    Left = 72
    Top = 35
    Width = 417
    Height = 21
    TabOrder = 4
  end
  object dtpNasc: TDateTimePicker
    Left = 368
    Top = 8
    Width = 121
    Height = 21
    Date = 44168.000000000000000000
    Time = 0.461876388886594200
    TabOrder = 5
  end
  object rbSexo: TRadioGroup
    AlignWithMargins = True
    Left = 72
    Top = 62
    Width = 121
    Height = 38
    BiDiMode = bdLeftToRight
    Caption = 'Sexo'
    Columns = 2
    Items.Strings = (
      'F'
      'M')
    ParentBiDiMode = False
    TabOrder = 6
    StyleElements = [seFont, seClient]
  end
  object meCPF: TMaskEdit
    Left = 72
    Top = 8
    Width = 192
    Height = 21
    EditMask = '000.000.000-00;_'
    MaxLength = 14
    TabOrder = 7
    Text = '   .   .   -  '
  end
  object dsPacientes: TDataSource
    Left = 560
    Top = 144
  end
  object ActionListPaciente: TActionList
    Left = 632
    Top = 152
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
