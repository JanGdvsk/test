unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.Mask, Vcl.ExtCtrls, unit7, Data.DB, Data.Win.ADODB, frxClass, frxDBSet,
  frxPreview;

type
  TRepForm = class(TForm)
    DataSourceRep: TDataSource;
    ADOQueryRep: TADOQuery;
    frxReport1: TfrxReport;
    frxPreview1: TfrxPreview;
    frxDBDataset1: TfrxDBDataset;
    ADOQueryRep????: TCurrencyField;
    ADOQueryRep?????????????????: TIntegerField;
    ADOQueryRep??????????????????: TWideStringField;
    ADOQueryRep?????????????: TIntegerField;
    ADOQueryRep??????????: TWideStringField;
    ADOQueryRep?????????: TWideStringField;
    ADOQueryRep??????1??: TBCDField;
    ADOQueryRep???: TFloatField;
    procedure ADOQueryRepCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepForm: TRepForm;

implementation

{$R *.dfm}
Uses Unit6;

procedure TRepForm.ADOQueryRepCalcFields(DataSet: TDataSet);
begin
  if (DataSet.FieldByName(Cost).Value <> null) and (DataSet.FieldByName(Weight).Value <> null) then
    DataSet['????'] := StrToInt(DataSet.FieldByName(Cost).Value) *
    StrToInt(DataSet.FieldByName(Weight).Value);
end;

procedure TRepForm.FormShow(Sender: TObject);
begin
  AdoqueryRep.Parameters.ParamByName('Param1').Value :=
  StrToDate(Copy(DateToStr(ReportForm.DTPickerStartPeriod.Date), 0, 10));
  AdoqueryRep.Parameters.ParamByName('Param2').Value :=
  StrToDate(Copy(DateToStr(ReportForm.DTPickerEndPeriod.Date), 0, 10));
  AdoQueryRep.Active;
end;

procedure TRepForm.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'DateStart') = 0 then
    Value := StrToDate(Copy(DateToStr(ReportForm.DTPickerStartPeriod.Date), 0, 10));      if CompareText(VarName, 'DateEnd') = 0 then    Value := StrToDate(Copy(DateToStr(ReportForm.DTPickerEndPeriod.Date), 0, 10));end;
end.
