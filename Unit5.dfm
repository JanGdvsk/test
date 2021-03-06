object RepForm: TRepForm
  Left = 0
  Top = 0
  Caption = #1054#1090#1095#1077#1090
  ClientHeight = 375
  ClientWidth = 806
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object frxPreview1: TfrxPreview
    Left = 0
    Top = 0
    Width = 806
    Height = 375
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    UseReportHints = True
  end
  object DataSourceRep: TDataSource
    DataSet = ADOQueryRep
    Left = 648
    Top = 104
  end
  object ADOQueryRep: TADOQuery
    Connection = DeliveriesForm.ConnectToDB
    CursorType = ctStatic
    OnCalcFields = ADOQueryRepCalcFields
    Parameters = <
      item
        Name = 'Param1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Param2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Select  '#1055#1086#1089#1090#1072#1074#1082#1072'.'#1055#1086#1089#1090#1072#1074#1097#1080#1082', '#1055#1086#1089#1090#1072#1074#1097#1080#1082'.'#1055#1086#1089#1090#1072#1074#1097#1080#1082','
      
        ' '#1055#1086#1089#1090#1072#1074#1082#1072'.'#1058#1086#1074#1072#1088', '#1058#1086#1074#1072#1088'.'#1058#1086#1074#1072#1088', '#1058#1086#1074#1072#1088'.['#1058#1080#1087' '#1090#1086#1074#1072#1088#1072'], '#1055#1088#1072#1081#1089'.['#1062#1077#1085#1072' '#1079#1072 +
        ' 1'#1077#1076'], SUM('#1042#1077#1089') as '#1042#1077#1089
      
        '  From ((('#1055#1086#1089#1090#1072#1074#1082#1072' INNER JOIN '#1055#1086#1089#1090#1072#1074#1097#1080#1082' on '#1055#1086#1089#1090#1072#1074#1097#1080#1082'.'#1050#1086#1076' = '#1055#1086#1089#1090#1072 +
        #1074#1082#1072'.'#1055#1086#1089#1090#1072#1074#1097#1080#1082') '
      '  INNER JOIN '#1058#1086#1074#1072#1088' on '#1058#1086#1074#1072#1088'.'#1050#1086#1076' = '#1055#1086#1089#1090#1072#1074#1082#1072'.'#1058#1086#1074#1072#1088' ) '
      '  INNER JOIN '#1055#1088#1072#1081#1089' on '#1055#1088#1072#1081#1089'.'#1050#1086#1076' = '#1055#1086#1089#1090#1072#1074#1082#1072'.'#1055#1088#1072#1081#1089'_ )'
      
        '      Where ((['#1044#1072#1090#1072' '#1055#1086#1089#1090#1072#1074#1082#1080'] >:Param1) And (['#1044#1072#1090#1072' '#1055#1086#1089#1090#1072#1074#1082#1080'] < :' +
        'Param2))'
      '  GROUP BY '#1055#1086#1089#1090#1072#1074#1082#1072'.'#1055#1086#1089#1090#1072#1074#1097#1080#1082', '#1055#1086#1089#1090#1072#1074#1097#1080#1082'.'#1055#1086#1089#1090#1072#1074#1097#1080#1082','
      
        '  '#1055#1086#1089#1090#1072#1074#1082#1072'.'#1058#1086#1074#1072#1088', '#1058#1086#1074#1072#1088'.'#1058#1086#1074#1072#1088', '#1058#1086#1074#1072#1088'.['#1058#1080#1087' '#1090#1086#1074#1072#1088#1072'], '#1055#1088#1072#1081#1089'.['#1062#1077#1085#1072' '#1079 +
        #1072' 1'#1077#1076']'
      '  Order by '#1055#1086#1089#1090#1072#1074#1082#1072'.'#1055#1086#1089#1090#1072#1074#1097#1080#1082)
    Left = 648
    Top = 40
    object ADOQueryRepИтог: TCurrencyField
      FieldKind = fkCalculated
      FieldName = #1048#1090#1086#1075
      Calculated = True
    end
    object ADOQueryRepПоставкаПоставщик: TIntegerField
      FieldName = #1055#1086#1089#1090#1072#1074#1082#1072'.'#1055#1086#1089#1090#1072#1074#1097#1080#1082
    end
    object ADOQueryRepПоставщикПоставщик: TWideStringField
      FieldName = #1055#1086#1089#1090#1072#1074#1097#1080#1082'.'#1055#1086#1089#1090#1072#1074#1097#1080#1082
      Size = 255
    end
    object ADOQueryRepПоставкаТовар: TIntegerField
      FieldName = #1055#1086#1089#1090#1072#1074#1082#1072'.'#1058#1086#1074#1072#1088
    end
    object ADOQueryRepТоварТовар: TWideStringField
      FieldName = #1058#1086#1074#1072#1088'.'#1058#1086#1074#1072#1088
      Size = 255
    end
    object ADOQueryRepТиптовара: TWideStringField
      FieldName = #1058#1080#1087' '#1090#1086#1074#1072#1088#1072
      Size = 255
    end
    object ADOQueryRepЦеназа1ед: TBCDField
      FieldName = #1062#1077#1085#1072' '#1079#1072' 1'#1077#1076
      Precision = 19
    end
    object ADOQueryRepВес: TFloatField
      FieldName = #1042#1077#1089
    end
  end
  object frxReport1: TfrxReport
    Version = '4.13.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxPreview1
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44264.429346770840000000
    ReportOptions.LastChange = 44264.594471574080000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 64
    Top = 72
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Left = 15.118120000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            #1054#1090#1095#1077#1090' '#1086' '#1087#1086#1089#1090#1072#1074#1082#1072#1093' ')
        end
        object Memo15: TfrxMemoView
          Left = 302.362400000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            #1057)
        end
        object Memo16: TfrxMemoView
          Left = 525.354670000000100000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            #1055#1086)
        end
        object DateStart: TfrxMemoView
          Left = 343.937230000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8W = (
            '[DateStart]')
        end
        object DateEnd: TfrxMemoView
          Left = 566.929499999999900000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8W = (
            '[DateEnd]')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 309.921460000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 15.118120000000000000
          Top = 60.472480000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1055#1086#1089#1090#1072#1074#1097#1080#1082'.'#1055#1086#1089#1090#1072#1074#1097#1080#1082
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1055#1086#1089#1090#1072#1074#1097#1080#1082'.'#1055#1086#1089#1090#1072#1074#1097#1080#1082'"]')
        end
        object Memo3: TfrxMemoView
          Left = 15.118120000000000000
          Top = 132.283550000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1058#1086#1074#1072#1088'.'#1058#1086#1074#1072#1088
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1058#1086#1074#1072#1088'.'#1058#1086#1074#1072#1088'"]')
        end
        object Memo4: TfrxMemoView
          Left = 15.118120000000000000
          Top = 204.094620000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1058#1080#1087' '#1090#1086#1074#1072#1088#1072
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1058#1080#1087' '#1090#1086#1074#1072#1088#1072'"]')
        end
        object Memo7: TfrxMemoView
          Left = 457.323130000000000000
          Top = 60.472480000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1062#1077#1085#1072' '#1079#1072' 1'#1077#1076
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1062#1077#1085#1072' '#1079#1072' 1'#1077#1076'"]')
        end
        object Memo8: TfrxMemoView
          Left = 544.252320000000100000
          Top = 275.905690000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1048#1090#1086#1075
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1048#1090#1086#1075'"]')
        end
        object Memo9: TfrxMemoView
          Left = 457.323130000000000000
          Top = 204.094620000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1042#1077#1089
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."'#1042#1077#1089'"]')
        end
        object Memo6: TfrxMemoView
          Left = 15.118120000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            #1055#1086#1089#1090#1072#1074#1097#1080#1082)
        end
        object Memo10: TfrxMemoView
          Left = 15.118120000000000000
          Top = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            #1058#1086#1074#1072#1088)
        end
        object Memo11: TfrxMemoView
          Left = 15.118120000000000000
          Top = 177.637910000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            #1058#1080#1087' '#1090#1086#1074#1072#1088#1072)
        end
        object Memo12: TfrxMemoView
          Left = 457.323130000000000000
          Top = 30.236239999999990000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            #1062#1077#1085#1072' '#1087#1086' '#1079#1072#1103#1074#1082#1077
            '')
        end
        object Memo13: TfrxMemoView
          Left = 457.323130000000000000
          Top = 177.637910000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            #1054#1073#1097#1080#1081' '#1074#1077#1089)
        end
        object Memo14: TfrxMemoView
          Left = 544.252320000000100000
          Top = 253.228510000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            #1048#1090#1086#1075)
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 472.441250000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DataSourceRep
    BCDToCurrency = False
    Left = 64
    Top = 208
  end
end
