object FormPrice: TFormPrice
  Left = 0
  Top = 0
  Caption = #1055#1088#1072#1081#1089
  ClientHeight = 532
  ClientWidth = 722
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 722
    Height = 137
    Align = alTop
    TabOrder = 0
    object DBLookupCombo1: TDBLookupCombo
      Left = 56
      Top = 40
      Width = 186
      Height = 25
      DataField = #1055#1088#1072#1081#1089'.'#1055#1086#1089#1090#1072#1074#1097#1080#1082
      DataSource = DeliveriesForm.DataSource1
      TabOrder = 0
    end
    object DBLookupCombo2: TDBLookupCombo
      Left = 272
      Top = 40
      Width = 186
      Height = 25
      TabOrder = 1
    end
    object DateTimePicker1: TDateTimePicker
      Left = 56
      Top = 88
      Width = 186
      Height = 21
      Date = 44261.900269201390000000
      Time = 44261.900269201390000000
      TabOrder = 2
    end
    object DateTimePicker2: TDateTimePicker
      Left = 272
      Top = 88
      Width = 186
      Height = 21
      Date = 44261.900329537040000000
      Time = 44261.900329537040000000
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 496
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 137
    Width = 722
    Height = 392
    Align = alTop
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
