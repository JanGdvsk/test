unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unit1, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Unit7, Data.DB, Data.Win.ADODB;

type
  TXchngForm = class(TForm)
    Panel2: TPanel;
    DBEditCost: TDBEdit;
    DateTimePickerStart: TDateTimePicker;
    DateTimePickerEnd: TDateTimePicker;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Button8: TButton;
    QPriceCost: TADOQuery;
    DataSourceCost: TDataSource;
    Panel3: TPanel;
    DateTimePickerSupply: TDateTimePicker;
    DBEditWeight: TDBEdit;
    ComboCost: TDBLookupComboBox;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button2: TButton;
    procedure Button8Click(Sender: TObject);
    procedure DBLookupComboBox3CloseUp(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure DBEditCostChange(Sender: TObject);
    procedure DBEditWeightChange(Sender: TObject);
    procedure ComboCostClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CostUpdate();
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  XchngForm: TXchngForm;

implementation

{$R *.dfm}

procedure TXchngForm.Button1Click(Sender: TObject);
var
  LocalQuery, GlobalQuery: TADOQuery;
begin
  With DeliveriesForm do
  begin
    LocalQuery := QSimpleDelivers;
    GlobalQuery := AdoQueryDelivers;
    GlobalQuery.Edit;
    if XchngForm.Caption = '????????' then
      LocalQuery.FieldByName(SupplyDate).AsDateTime :=
        StrToDate(Copy(DateToStr(DateTimePickerSupply.Date), 0, 10))
    else
      GlobalQuery.FieldByName(SupplyDate).AsDateTime :=
        StrToDate(Copy(DateToStr(DateTimePickerSupply.Date), 0, 10));
    LocalQuery.Edit;
    if LocalQuery.Modified then LocalQuery.Post;
    if GlobalQuery.Modified then GlobalQuery.Post;
  end;
  //if localQuery.Modified then   ??????? 3 ~ ????? ?????? ???????
  LocalQuery.Append;
  // ??????? 2
  panel2.Visible := false;
  panel2.Visible := true;
  panel3.Visible := false;
  panel3.Visible := true;
end;

procedure TXchngForm.Button2Click(Sender: TObject);
var
  LocalQuery, GlobalQuery: TADOQuery;
begin
  With DeliveriesForm do
  begin
    LocalQuery := QSimpleDelivers;             //? ??????????? ?? ?????????
    GlobalQuery := AdoQueryDelivers;
    if MainGrid.DataSource = DataSourcePrice then
    begin
      LocalQuery := QSimplePrice;
      GlobalQuery := AdoQueryPrice;
    end;
    if LocalQuery.Modified then LocalQuery.Cancel;
    if GlobalQuery.Modified then GlobalQuery.Cancel;
  end;
  Close;
end;

procedure TXchngForm.Button8Click(Sender: TObject);
var
  LocalQuery, GlobalQuery: TADOQuery;
begin
  With DeliveriesForm do
  begin                                        //???????? ???????? ? ????? ? ??
    LocalQuery := QSimpleDelivers;             //? ??????????? ?? ?????????
    GlobalQuery := AdoQueryDelivers;
    if MainGrid.DataSource = DataSourcePrice then
    begin
      LocalQuery := QSimplePrice;
      GlobalQuery := AdoQueryPrice;
      GlobalQuery.Edit;
      if XchngForm.Caption = '????????' then
      begin
        LocalQuery.FieldByName(StartDate).AsDateTime :=
          StrToDate(Copy(DateToStr(DateTimePickerStart.Date), 0, 10));
        LocalQuery.FieldByName(EndDate).AsDateTime :=
          StrToDate(Copy(DateToStr(DateTimePickerEnd.Date), 0, 10));
      end
      else
      begin
        GlobalQuery.FieldByName(StartDate).AsDateTime :=
          StrToDate(Copy(DateToStr(DateTimePickerStart.Date), 0, 10));
        GlobalQuery.FieldByName(EndDate).AsDateTime :=
          StrToDate(Copy(DateToStr(DateTimePickerEnd.Date), 0, 10));
      end;
    end
    else
    begin
      GlobalQuery.Edit;
      if XchngForm.Caption = '????????' then
        LocalQuery.FieldByName(SupplyDate).AsDateTime :=
          StrToDate(Copy(DateToStr(DateTimePickerSupply.Date), 0, 10))
      else
        GlobalQuery.FieldByName(SupplyDate).AsDateTime :=
          StrToDate(Copy(DateToStr(DateTimePickerSupply.Date), 0, 10))    
    end;
    LocalQuery.Edit;
    if LocalQuery.Modified then LocalQuery.Post;
    if GlobalQuery.Modified then GlobalQuery.Post;
    GlobalQuery.Close;
    GlobalQuery.Open;
  end;
   //show
  Close;
end;

procedure TXchngForm.CostUpdate();
begin
  if ( DblookUpCombobox1.KeyValue <> Null ) And (DblookUpCombobox3.KeyValue <> Null ) then
  begin
    DeliveriesForm.StartQuery(QPriceCost, 'Select * From'
      +' ????? Where (????????? = ' + InttoStr(DblookUpCombobox1.KeyValue)
      + ' ) and (????? = ' + IntToStr(DblookUpCombobox3.KeyValue)+ ' )','' );
    QPriceCost.Active := true;
  end;
end;

procedure TXchngForm.ComboCostClick(Sender: TObject);
begin
  CostUpdate()  //
end;

procedure TXchngForm.DBEditCostChange(Sender: TObject);
begin
  DeliveriesForm.DataSourceSimplePrice.Edit;
end;

procedure TXchngForm.DBEditWeightChange(Sender: TObject);
begin
  DeliveriesForm.DataSourceSimpleDelivers.Edit;
end;

procedure TXchngForm.DBLookupComboBox1Click(Sender: TObject);
begin
    CostUpdate()  //
end;

procedure TXchngForm.DBLookupComboBox2CloseUp(Sender: TObject);
begin
  CostUpdate()  //
end;

procedure TXchngForm.DBLookupComboBox3CloseUp(Sender: TObject);
begin
  CostUpdate() //
end;

procedure TXchngForm.FormCreate(Sender: TObject);
begin
  DateTimePickersupply.DateTime := Now;
  DateTimePickerstart.DateTime := Now;
  DateTimePickerend.DateTime := Now;
end;

procedure TXchngForm.FormShow(Sender: TObject);
begin
  CostUpdate()          // ? ???????? ? ???????
end;
end.
