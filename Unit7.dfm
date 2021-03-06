object DeliveriesForm: TDeliveriesForm
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1055#1086#1089#1090#1072#1074#1082#1080
  ClientHeight = 433
  ClientWidth = 956
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = DeliveriesMenu
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 956
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label4: TLabel
      Left = 24
      Top = 3
      Width = 89
      Height = 13
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077':'
    end
    object Button2: TButton
      Left = 16
      Top = 18
      Width = 130
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 152
      Top = 18
      Width = 121
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 279
      Top = 18
      Width = 130
      Height = 25
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object MainGrid: TDBGrid
    Left = 0
    Top = 49
    Width = 956
    Height = 387
    Align = alTop
    DataSource = DataSourcePrice
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ConnectToDB: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Password="";User ID=Admin;Data ' +
      'Source=C:\Users\ber\Desktop\1\1\Win32\Debug\bd_suppliers.mdb;Mod' +
      'e=Share Deny None;Persist Security Info=True;Jet OLEDB:System da' +
      'tabase="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password' +
      '="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Je' +
      't OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transact' +
      'ions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create Syste' +
      'm Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39 +
      't Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica' +
      ' Repair=False;Jet OLEDB:SFP=False'
    KeepConnection = False
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 621
    Top = 205
  end
  object DeliveriesMenu: TMainMenu
    Left = 540
    Top = 85
    object G1: TMenuItem
      Caption = #1055#1088#1072#1081#1089#1099
      OnClick = G1Click
    end
    object N5: TMenuItem
      Caption = #1055#1086#1089#1090#1072#1074#1082#1080
      OnClick = N5Click
    end
    object N1: TMenuItem
      Caption = #1054#1090#1095#1077#1090
      OnClick = N1Click
    end
  end
  object DataSourceDelivers: TDataSource
    DataSet = ADOQueryDelivers
    Left = 29
    Top = 264
  end
  object DataSourceDeliver: TDataSource
    DataSet = ADOQueryDeliver
    Left = 120
    Top = 151
  end
  object ADOQueryDelivers: TADOQuery
    Connection = ConnectToDB
    CursorType = ctStatic
    AfterOpen = ADOQueryDeliversAfterOpen
    OnCalcFields = ADOQueryDeliversCalcFields
    Parameters = <>
    SQL.Strings = (
      
        'Select '#1055#1086#1089#1090#1072#1074#1082#1072'.'#1050#1086#1076' , '#1055#1086#1089#1090#1072#1074#1082#1072'.'#1055#1086#1089#1090#1072#1074#1097#1080#1082', '#1055#1086#1089#1090#1072#1074#1097#1080#1082'.'#1055#1086#1089#1090#1072#1074#1097#1080#1082', '#1055 +
        #1086#1089#1090#1072#1074#1082#1072'.'#1058#1086#1074#1072#1088','
      ' '#1058#1086#1074#1072#1088'.'#1058#1086#1074#1072#1088', '#1058#1086#1074#1072#1088'.['#1058#1080#1087' '#1090#1086#1074#1072#1088#1072'],'
      
        '  '#1042#1077#1089', '#1055#1088#1072#1081#1089'_, '#1055#1088#1072#1081#1089'.['#1062#1077#1085#1072' '#1079#1072' 1'#1077#1076'], ['#1044#1072#1090#1072' '#1055#1086#1089#1090#1072#1074#1082#1080'] From ((('#1055#1086#1089#1090 +
        #1072#1074#1082#1072
      '  INNER JOIN '#1055#1086#1089#1090#1072#1074#1097#1080#1082' on '#1055#1086#1089#1090#1072#1074#1097#1080#1082'.'#1050#1086#1076' = '#1055#1086#1089#1090#1072#1074#1082#1072'.'#1055#1086#1089#1090#1072#1074#1097#1080#1082')'
      '  INNER JOIN '#1058#1086#1074#1072#1088' on '#1058#1086#1074#1072#1088'.'#1050#1086#1076' = '#1055#1086#1089#1090#1072#1074#1082#1072'.'#1058#1086#1074#1072#1088' )'
      '  INNER JOIN '#1055#1088#1072#1081#1089' on '#1055#1088#1072#1081#1089'.'#1050#1086#1076' = '#1055#1086#1089#1090#1072#1074#1082#1072'.'#1055#1088#1072#1081#1089'_ ) '
      '  Order by '#1055#1088#1072#1081#1089'_')
    Left = 30
    Top = 208
    object ADOQueryDeliversКод: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object ADOQueryDeliversПоставкаПоставщик: TIntegerField
      FieldName = #1055#1086#1089#1090#1072#1074#1082#1072'.'#1055#1086#1089#1090#1072#1074#1097#1080#1082
      OnGetText = ADOQueryDeliversПоставкаПоставщикGetText
    end
    object ADOQueryDeliversПоставщикПоставщик: TWideStringField
      FieldName = #1055#1086#1089#1090#1072#1074#1097#1080#1082'.'#1055#1086#1089#1090#1072#1074#1097#1080#1082
      Size = 255
    end
    object ADOQueryDeliversПоставкаТовар: TIntegerField
      FieldName = #1055#1086#1089#1090#1072#1074#1082#1072'.'#1058#1086#1074#1072#1088
      OnGetText = ADOQueryDeliversПоставкаТоварGetText
    end
    object ADOQueryDeliversТоварТовар: TWideStringField
      FieldName = #1058#1086#1074#1072#1088'.'#1058#1086#1074#1072#1088
      Size = 255
    end
    object ADOQueryDeliversТиптовара: TWideStringField
      FieldName = #1058#1080#1087' '#1090#1086#1074#1072#1088#1072
      Size = 255
    end
    object ADOQueryDeliversВес: TIntegerField
      FieldName = #1042#1077#1089
    end
    object ADOQueryDeliversДатаПоставки: TDateTimeField
      FieldName = #1044#1072#1090#1072' '#1055#1086#1089#1090#1072#1074#1082#1080
    end
    object ADOQueryDeliversЦеназа1ед: TBCDField
      FieldName = #1062#1077#1085#1072' '#1079#1072' 1'#1077#1076
      Precision = 19
    end
    object ADOQueryDeliversПрайс_: TIntegerField
      FieldName = #1055#1088#1072#1081#1089'_'
    end
    object ADOQueryDeliversИтог: TCurrencyField
      FieldKind = fkCalculated
      FieldName = #1048#1090#1086#1075
      Calculated = True
    end
  end
  object ADOQueryPrice: TADOQuery
    Connection = ConnectToDB
    CursorType = ctStatic
    AfterOpen = ADOQueryPriceAfterOpen
    Parameters = <>
    SQL.Strings = (
      
        'Select  '#1055#1088#1072#1081#1089'.'#1050#1086#1076' , '#1055#1088#1072#1081#1089'.'#1055#1086#1089#1090#1072#1074#1097#1080#1082', '#1055#1086#1089#1090#1072#1074#1097#1080#1082'.'#1055#1086#1089#1090#1072#1074#1097#1080#1082', '#1055#1088#1072#1081#1089'.' +
        #1058#1086#1074#1072#1088', '#1058#1086#1074#1072#1088'.'#1058#1086#1074#1072#1088', '#1058#1086#1074#1072#1088'.['#1058#1080#1087' '#1058#1086#1074#1072#1088#1072'] ,'
      
        ' ['#1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1087#1077#1088#1080#1086#1076#1072'], ['#1044#1072#1090#1072' '#1082#1086#1085#1094#1072' '#1087#1077#1088#1080#1086#1076#1072'], '#1055#1088#1072#1081#1089'.['#1062#1077#1085#1072' '#1079#1072' 1'#1077#1076 +
        '] '
      
        ' From (('#1055#1088#1072#1081#1089' INNER JOIN '#1055#1086#1089#1090#1072#1074#1097#1080#1082' on '#1055#1086#1089#1090#1072#1074#1097#1080#1082'.'#1050#1086#1076' = '#1055#1088#1072#1081#1089'.'#1055#1086#1089#1090 +
        #1072#1074#1097#1080#1082')'
      
        '   INNER JOIN '#1058#1086#1074#1072#1088' on '#1058#1086#1074#1072#1088'.'#1050#1086#1076' = '#1055#1088#1072#1081#1089'.'#1058#1086#1074#1072#1088') Order by '#1055#1088#1072#1081#1089'.[' +
        #1062#1077#1085#1072' '#1079#1072' 1'#1077#1076']')
    Left = 32
    Top = 104
    object ADOQueryPriceКод: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object ADOQueryPriceПрайсПоставщик: TIntegerField
      FieldName = #1055#1088#1072#1081#1089'.'#1055#1086#1089#1090#1072#1074#1097#1080#1082
      OnGetText = ADOQueryPriceПрайсПоставщикGetText
    end
    object ADOQueryPriceПоставщикПоставщик: TWideStringField
      FieldName = #1055#1086#1089#1090#1072#1074#1097#1080#1082'.'#1055#1086#1089#1090#1072#1074#1097#1080#1082
      Size = 255
    end
    object ADOQueryPriceПрайсТовар: TIntegerField
      FieldName = #1055#1088#1072#1081#1089'.'#1058#1086#1074#1072#1088
      OnGetText = ADOQueryPriceПрайсТоварGetText
    end
    object ADOQueryPriceТоварТовар: TWideStringField
      FieldName = #1058#1086#1074#1072#1088'.'#1058#1086#1074#1072#1088
      Size = 255
    end
    object ADOQueryPriceДатаначалапериода: TDateTimeField
      FieldName = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1087#1077#1088#1080#1086#1076#1072
    end
    object ADOQueryPriceДатаконцапериода: TDateTimeField
      FieldName = #1044#1072#1090#1072' '#1082#1086#1085#1094#1072' '#1087#1077#1088#1080#1086#1076#1072
    end
    object ADOQueryPriceЦеназа1ед: TBCDField
      FieldName = #1062#1077#1085#1072' '#1079#1072' 1'#1077#1076
      Precision = 19
    end
    object ADOQueryPriceТипТовара: TWideStringField
      FieldName = #1058#1080#1087' '#1058#1086#1074#1072#1088#1072
      Size = 255
    end
  end
  object DataSourceProduct: TDataSource
    DataSet = ADOQueryProduct
    Left = 208
    Top = 150
  end
  object DataSourcePrice: TDataSource
    DataSet = ADOQueryPrice
    Left = 32
    Top = 152
  end
  object QSimplePrice: TADOQuery
    Connection = ConnectToDB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From '#1055#1088#1072#1081#1089)
    Left = 309
    Top = 85
    object QSimplePriceКод: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object QSimplePriceПоставщик: TIntegerField
      FieldName = #1055#1086#1089#1090#1072#1074#1097#1080#1082
    end
    object QSimplePriceТовар: TIntegerField
      FieldName = #1058#1086#1074#1072#1088
    end
    object QSimplePriceЦеназа1ед: TBCDField
      FieldName = #1062#1077#1085#1072' '#1079#1072' 1'#1077#1076
      Precision = 19
    end
    object QSimplePriceДатаначалапериода: TDateTimeField
      FieldName = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1087#1077#1088#1080#1086#1076#1072
    end
    object QSimplePriceДатаконцапериода: TDateTimeField
      FieldName = #1044#1072#1090#1072' '#1082#1086#1085#1094#1072' '#1087#1077#1088#1080#1086#1076#1072
    end
  end
  object DataSourceSimplePrice: TDataSource
    DataSet = QSimplePrice
    Left = 317
    Top = 150
  end
  object DelQuery: TADOQuery
    Connection = ConnectToDB
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'param'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      ''
      'Select * From '#1055#1088#1072#1081#1089' where '#1050#1086#1076' = :param')
    Left = 664
    Top = 120
  end
  object ADOQueryDeliver: TADOQuery
    Connection = ConnectToDB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From '#1055#1086#1089#1090#1072#1074#1097#1080#1082)
    Left = 120
    Top = 88
    object ADOQueryDeliverКод: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object ADOQueryDeliverПоставщик: TWideStringField
      FieldName = #1055#1086#1089#1090#1072#1074#1097#1080#1082
      Size = 255
    end
  end
  object ADOQueryProduct: TADOQuery
    Connection = ConnectToDB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From '#1058#1086#1074#1072#1088)
    Left = 216
    Top = 88
    object ADOQueryProductКод: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object ADOQueryProductТовар: TWideStringField
      FieldName = #1058#1086#1074#1072#1088
      Size = 255
    end
    object ADOQueryProductТиптовара: TWideStringField
      FieldName = #1058#1080#1087' '#1090#1086#1074#1072#1088#1072
      Size = 255
    end
  end
  object QSimpleDelivers: TADOQuery
    Connection = ConnectToDB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From '#1055#1086#1089#1090#1072#1074#1082#1072)
    Left = 416
    Top = 88
  end
  object DataSourceSimpleDelivers: TDataSource
    DataSet = QSimpleDelivers
    Left = 472
    Top = 152
  end
end
