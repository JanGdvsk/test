object XchngForm: TXchngForm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100
  ClientHeight = 408
  ClientWidth = 668
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 668
    Height = 408
    Align = alTop
    BorderStyle = bsSingle
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 9
      Width = 57
      Height = 13
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
    end
    object Label2: TLabel
      Left = 13
      Top = 55
      Width = 30
      Height = 13
      Caption = #1058#1086#1074#1072#1088
    end
    object Label3: TLabel
      Left = 13
      Top = 98
      Width = 57
      Height = 13
      Caption = #1058#1080#1087' '#1090#1086#1074#1072#1088#1072
    end
    object Label4: TLabel
      Left = 185
      Top = 9
      Width = 111
      Height = 13
      Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1087#1077#1088#1080#1086#1076#1072
    end
    object Label5: TLabel
      Left = 185
      Top = 55
      Width = 105
      Height = 13
      Caption = #1044#1072#1090#1072' '#1082#1086#1085#1094#1072' '#1087#1077#1088#1080#1086#1076#1072
    end
    object Label6: TLabel
      Left = 185
      Top = 98
      Width = 54
      Height = 13
      Caption = #1062#1077#1085#1072' '#1079#1072' '#1082#1075
    end
    object DBEditCost: TDBEdit
      Left = 185
      Top = 114
      Width = 145
      Height = 21
      DataField = #1062#1077#1085#1072' '#1079#1072' 1'#1077#1076
      DataSource = DeliveriesForm.DataSourcePrice
      TabOrder = 0
      OnChange = DBEditCostChange
    end
    object DateTimePickerStart: TDateTimePicker
      Left = 185
      Top = 28
      Width = 145
      Height = 21
      Date = 44261.934247627320000000
      Time = 44261.934247627320000000
      TabOrder = 1
    end
    object DateTimePickerEnd: TDateTimePicker
      Left = 185
      Top = 71
      Width = 145
      Height = 21
      Date = 44261.934300081020000000
      Time = 44261.934300081020000000
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 13
      Top = 28
      Width = 145
      Height = 21
      DataField = #1055#1086#1089#1090#1072#1074#1097#1080#1082
      DataSource = DeliveriesForm.DataSourceSimplePrice
      KeyField = #1050#1086#1076
      ListField = #1055#1086#1089#1090#1072#1074#1097#1080#1082
      ListSource = DeliveriesForm.DataSourceDeliver
      TabOrder = 3
      OnClick = DBLookupComboBox1Click
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 13
      Top = 71
      Width = 145
      Height = 21
      DataField = #1058#1086#1074#1072#1088
      DataSource = DeliveriesForm.DataSourceSimplePrice
      KeyField = #1050#1086#1076
      ListField = #1058#1086#1074#1072#1088
      ListSource = DeliveriesForm.DataSourceProduct
      TabOrder = 4
      OnCloseUp = DBLookupComboBox2CloseUp
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 13
      Top = 114
      Width = 145
      Height = 21
      DataField = #1058#1086#1074#1072#1088
      DataSource = DeliveriesForm.DataSourceSimplePrice
      KeyField = #1050#1086#1076
      ListField = #1058#1080#1087' '#1090#1086#1074#1072#1088#1072
      ListSource = DeliveriesForm.DataSourceProduct
      TabOrder = 5
      OnCloseUp = DBLookupComboBox3CloseUp
    end
    object Button8: TButton
      Left = 13
      Top = 152
      Width = 145
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 6
      OnClick = Button8Click
    end
    object Button2: TButton
      Left = 233
      Top = 152
      Width = 145
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 7
      OnClick = Button2Click
    end
  end
  object Panel3: TPanel
    Left = 167
    Top = 2
    Width = 305
    Height = 146
    ParentBackground = False
    TabOrder = 1
    object Label7: TLabel
      Left = 15
      Top = 9
      Width = 76
      Height = 13
      Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1072#1074#1082#1080
    end
    object Label8: TLabel
      Left = 15
      Top = 55
      Width = 106
      Height = 13
      Caption = #1057#1075#1088#1091#1078#1077#1085#1086' '#1082#1080#1083#1086#1075#1088#1072#1084#1084
    end
    object Label9: TLabel
      Left = 15
      Top = 98
      Width = 79
      Height = 13
      Caption = #1062#1077#1085#1072' '#1087#1086' '#1079#1072#1103#1074#1082#1077
    end
    object DateTimePickerSupply: TDateTimePicker
      Left = 15
      Top = 28
      Width = 145
      Height = 21
      Date = 44263.715164293980000000
      Time = 44263.715164293980000000
      TabOrder = 0
    end
    object DBEditWeight: TDBEdit
      Left = 15
      Top = 71
      Width = 145
      Height = 21
      DataField = #1042#1077#1089
      DataSource = DeliveriesForm.DataSourceDelivers
      TabOrder = 1
      OnChange = DBEditWeightChange
    end
    object ComboCost: TDBLookupComboBox
      Left = 15
      Top = 114
      Width = 145
      Height = 21
      DataField = #1055#1088#1072#1081#1089'_'
      DataSource = DeliveriesForm.DataSourceSimpleDelivers
      KeyField = #1050#1086#1076
      ListField = #1062#1077#1085#1072' '#1079#1072' 1'#1077#1076
      ListFieldIndex = 2
      ListSource = DataSourceCost
      TabOrder = 2
      OnClick = ComboCostClick
    end
    object Button1: TButton
      Left = 176
      Top = 8
      Width = 113
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1077#1097#1077
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object QPriceCost: TADOQuery
    Connection = DeliveriesForm.ConnectToDB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  From  '#1055#1088#1072#1081#1089)
    Left = 360
    Top = 144
  end
  object DataSourceCost: TDataSource
    DataSet = QPriceCost
    Left = 432
    Top = 144
  end
end
