unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,DateUtils,
  Vcl.DBGrids, ComObj, ShellAPI, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.CheckLst, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.Buttons, Bde.DBTables, Vcl.DBLookup;

type
  TDeliveriesForm = class(TForm)
    ConnectToDB: TADOConnection;
    DeliveriesMenu: TMainMenu;
    G1: TMenuItem;
    DataSourceDelivers: TDataSource;
    DataSourceDeliver: TDataSource;
    ADOQueryDelivers: TADOQuery;
    ADOQueryPrice: TADOQuery;
    ADOQueryPrice???: TAutoIncField;
    ADOQueryPrice??????????????: TIntegerField;
    ADOQueryPrice??????????????????: TWideStringField;
    ADOQueryPrice??????????: TIntegerField;
    ADOQueryPrice??????????: TWideStringField;
    ADOQueryPrice?????????????????: TDateTimeField;
    ADOQueryPrice????????????????: TDateTimeField;
    ADOQueryPrice??????1??: TBCDField;
    DataSourceProduct: TDataSource;
    ADOQueryDelivers???: TAutoIncField;
    ADOQueryDelivers?????????????????: TIntegerField;
    ADOQueryDelivers??????????????????: TWideStringField;
    ADOQueryDelivers?????????????: TIntegerField;
    ADOQueryDelivers??????????: TWideStringField;
    ADOQueryDelivers?????????: TWideStringField;
    ADOQueryDelivers???: TIntegerField;
    ADOQueryDelivers????????????: TDateTimeField;
    DataSourcePrice: TDataSource;
    QSimplePrice: TADOQuery;
    DataSourceSimplePrice: TDataSource;
    ADOQueryPrice?????????: TWideStringField;
    QSimplePrice???: TAutoIncField;
    QSimplePrice?????????: TIntegerField;
    QSimplePrice?????: TIntegerField;
    QSimplePrice??????1??: TBCDField;
    QSimplePrice?????????????????: TDateTimeField;
    QSimplePrice????????????????: TDateTimeField;
    DelQuery: TADOQuery;
    ADOQueryDeliver: TADOQuery;
    ADOQueryProduct: TADOQuery;
    ADOQueryDeliver???: TAutoIncField;
    ADOQueryDeliver?????????: TWideStringField;
    ADOQueryProduct???: TAutoIncField;
    ADOQueryProduct?????: TWideStringField;
    ADOQueryProduct?????????: TWideStringField;
    ADOQueryDelivers??????1??: TBCDField;
    ADOQueryDelivers?????_: TIntegerField;
    QSimpleDelivers: TADOQuery;
    DataSourceSimpleDelivers: TDataSource;
    N5: TMenuItem;
    Panel1: TPanel;
    Button2: TButton;
    Button1: TButton;
    Button3: TButton;
    ADOQueryDelivers????: TCurrencyField;
    Label4: TLabel;
    N1: TMenuItem;
    MainGrid: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ADOQueryPrice??????????????GetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure ADOQueryPrice??????????GetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure EditTable(LocalQuery: TADOQuery);
    procedure EditTableWithOutPost(LocalQuery: TADOQuery);
    procedure ADOQueryDelivers?????????????????GetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure ADOQueryDelivers?????????????GetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure ADOQueryPriceAfterOpen(DataSet: TDataSet);
    procedure ADOQueryDeliversAfterOpen(DataSet: TDataSet);
    procedure StartQuery(LocalQuery: TADOQuery; SQLContent, Param: String);
    procedure G1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure ADOQueryDeliversCalcFields(DataSet: TDataSet);
    procedure Button4Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  DeliveriesForm: TDeliveriesForm;
  MainQuery: TADOQuery;
  HideFields: Array [0..3] of string = ('?????????.', '?????.', '??? ', '?????_');
const
  ColmWidth = 120;
  //SQLContent
  SelectToPrice = 'Select * From ????? where ??? = :param';
  SelectToDelivers = 'Select * From ????????';
  SelectToListCost = 'Select [???? ?? 1??] From ((????? ' +
  'INNER JOIN ???????? on ?????.????????? = ????????.?????????) on '+
  ' ?????.????? = ????????.?????) '+
  ' Order by  [???? ?? 1??]';
  //fileds
  Deliver = '?????????';
  Product = '?????';
  TypeProduct = '??? ??????';
  StartDate = '???? ?????? ???????';
  EndDate = '???? ????? ???????';
  Cost = '???? ?? 1??';
  Weight = '???';
  PriceList = '?????_';
  SupplyDate = '???? ????????';
  Total = '????';
  //NameTable
  TDelivery = '????????';
  TPrice = '?????';
implementation

{$R *.dfm}

uses unit4, unit5, unit6;

procedure TDeliveriesForm.StartQuery(LocalQuery: TADOQuery; SQLContent, Param: String);
begin
  LocalQuery.close;  //      ~
  LocalQuery.SQL.Clear;
  if SQLContent <> ''  then
    LocalQuery.SQL.Add(SQLContent)
  else
  begin
    messageDlg('?? ??? ?????? SQL-??????', mtError, [mbOK], 0);
    exit;
  end;
  try
    if Param <> '' then
      LocalQuery.SQL.Add(Param);
    LocalQuery.ExecSQL;
  except
    On e : EDatabaseError do
    messageDlg(e.message,
    mtError,
    [mbOK],0);
  end;
end;

procedure SmartGridWidth(Grid:TDbgrid);
var
  i, index: Integer;
begin
  Grid.Columns[0].Width := 0;
  for i := 1 to Grid.Columns.count - 1 do
  begin
    Grid.Columns[i].Width := ColmWidth;
    for index := 0 to Length(HideFields) -1  do
     if (Pos(HideFields[index], Grid.Columns[i].Title.Caption) > 0) then
       Grid.Columns[i].Width := 0;
  end;
end;

function SetupGridGetValue(FieldName, SQLContent: string; Grid:TDbgrid;
                            Query:TAdoQuery): TStringList;
var
  SlPickList:TStringList;
begin
  DeliveriesForm.StartQuery(Query, SQLContent, '');
  SlPickList := TStringList.Create;
  try
    while not Query.EOF do begin
      slPickList.Add(Query.Fields[0].AsString);
      Query.Next;
    end;
    Result := slPickList;
  finally
    slPickList.Free;
  end;
end;

procedure TDeliveriesForm.N1Click(Sender: TObject);
begin
  with ReportForm do
  begin
    Parent := MainGrid;
    Show;
  end;
end;

procedure TDeliveriesForm.N5Click(Sender: TObject);
begin
  MainGrid.DataSource := DataSourceDelivers;
  SmartGridWidth(MainGrid);
end;

procedure TDeliveriesForm.ADOQueryDeliversAfterOpen(DataSet: TDataSet);
begin
  SmartGridWidth(MainGrid);
end;

procedure TDeliveriesForm.ADOQueryDeliversCalcFields(DataSet: TDataSet);
begin
  if (DataSet.FieldByName(Cost).Value <> null) and (DataSet.FieldByName(Weight).Value <> null) then
    DataSet[Total] := StrToInt(DataSet.FieldByName(Cost).Value) *
    StrToInt(DataSet.FieldByName(Weight).Value);
end;

procedure TDeliveriesForm.ADOQueryDelivers?????????????????GetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := AdoQueryDelivers.FieldByName(DeLiver + '.' + Deliver).value;
end;

procedure TDeliveriesForm.ADOQueryDelivers?????????????GetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := AdoQueryDelivers.FieldByName(Product + '.' + Product).value +
  ' | ' + AdoQueryDelivers.FieldByName(TypeProduct).value;
end;

procedure TDeliveriesForm.ADOQueryPriceAfterOpen(DataSet: TDataSet);
begin
  SmartGridWidth(MainGrid);
end;

procedure TDeliveriesForm.ADOQueryPrice??????????????GetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
    Text := AdoQueryPrice.FieldByName(Deliver + '.' + Deliver).value;
end;

procedure TDeliveriesForm.ADOQueryPrice??????????GetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := AdoQueryPrice.FieldByName(Product + '.' + Product).value +
  ' | ' + AdoQueryPrice.FieldByName(TypeProduct).value;
end;

procedure TDeliveriesForm.Button1Click(Sender: TObject);
var
  TempDataSource: TDataSource;
begin
  TempDataSource := DataSourceSimpleDelivers;  //????????? ?????????? ?????
  QSimpleDelivers.Append;                      //? ?????????? ?? ?????????
  with XchngForm do
  begin
    Caption := '????????';
    Panel3.Visible := true;
    DbEditWeight.DataSource := TempDataSource;
    if MainGrid.DataSource = DataSourcePrice then
    begin
      TempDataSource := DataSourceSimplePrice;
      QSimplePrice.Append;
      Panel3.Visible := false;
      DbEditCost.DataSource := TempDataSource;
    end;
    with DBLookupComboBox1 do
    begin
      Datasource := TempDataSource;
      DataField  := Deliver
    end;
    with DBLookupComboBox2 do
    begin
      Datasource := TempDataSource;
      DataField  := Product
    end;
    with DBLookupComboBox3 do
    begin
      Datasource := TempDataSource;
      DataField  := Product
    end;
    Parent:=DeliveriesForm.MainGrid;
    Show;
  end;
end;

procedure TDeliveriesForm.Button2Click(Sender: TObject);
var
  BuffString: String;
  LocalQuery: TADOQuery;
begin
  BuffString := TDelivery;
  LocalQuery := AdoQueryDelivers;
  if MainGrid.DataSource = DataSourcePrice then
  begin
    BuffString := TPrice;
    LocalQuery := AdoQueryPrice;
    StartQuery(DelQuery, 'Delete From ' + TDelivery + ' Where ?????_ = ',
    VarToStr(MainGrid.DataSource.DataSet.FieldByName('???').Value));
  end;
  StartQuery(DelQuery, 'Delete From ' + BuffString + ' Where ??? = ',
  VarToStr(MainGrid.DataSource.DataSet.FieldByName('???').Value));
  // show ~ ???????
  AdoQueryDelivers.Close;
  AdoQueryDelivers.Open;
  AdoQueryPrice.Close;
  AdoQueryPrice.Open;

end;

procedure TDeliveriesForm.Button3Click(Sender: TObject);
var
  TempDataSource: TDataSource;
  TempString: String;
begin
  TempDataSource := DataSourceSimpleDelivers;
  TempString := TDelivery + '.';
  with XchngForm do                        //????????? ?????????? ?????
  begin                                     // ????????????? ????????? ????????
    Caption := '????????';
    if MainGrid.DataSource = DataSourcePrice then
    begin
      TempDataSource := DataSourceSimplePrice;
      Panel3.Visible := false;
      TempString := TPrice + '.';
      DbEditCost.DataSource := DataSourcePrice;
      DateTimePickerStart.Date := DataSourcePrice.DataSet.FieldByName(StartDate).Value;
      DateTimePickerEnd.Date := DataSourcePrice.DataSet.FieldByName(EndDate).Value;
    end
    else
    begin
      DbEditWeight.DataSource :=  DataSourceDelivers;
      DateTimePickerSupply.Date := DataSourceDelivers.DataSet.FieldByName(SupplyDate).Value;
      Panel3.Visible := true;
      with ComboCost do
      begin
        Datasource := DataSourceDelivers;
        DataField  := PriceList;
        KeyValue := VarToStr(MainGrid.DataSource.DataSet.
        FieldByName(PriceList).Value);
      end
    end;
    with DBLookupComboBox1 do
    begin
      Datasource := TempDataSource;
      DataField  := Deliver;
      KeyValue := VarToStr(MainGrid.DataSource.DataSet.
      FieldByName(TempString + Deliver).Value);
    end;
    with DBLookupComboBox2 do
    begin
      Datasource := TempDataSource;
      DataField  := Product;
         KeyValue := VarToStr(MainGrid.DataSource.DataSet.
      FieldByName(TempString + Product).Value);
    end;
    with DBLookupComboBox3 do
    begin
      Datasource := TempDataSource;
      DataField  := Product;
         KeyValue := VarToStr(MainGrid.DataSource.DataSet.
      FieldByName(TempString + Product).Value);
    end;
    Parent:=DeliveriesForm.MainGrid;
    Show;
  end;
end;

procedure TDeliveriesForm.Button4Click(Sender: TObject);
begin
  with RepForm do
  begin
    AdoQueryRep.Active := false;
    RepForm.Show;
    RepForm.frxReport1.ShowReport();
  end;
end;

procedure TDeliveriesForm.Button5Click(Sender: TObject);
begin
  MainQuery.Cancel;
end;

procedure TDeliveriesForm.Button8Click(Sender: TObject);
begin
  ADOQueryPrice.Edit;
  ADOQueryPrice.Edit;
  EditTable(ADOQueryPrice);
end;

procedure TDeliveriesForm.Button9Click(Sender: TObject);
begin
  ADOQueryDelivers.Edit;
  EditTable(ADOQueryDelivers);
end;

procedure TDeliveriesForm.EditTable(LocalQuery: TADOQuery);
begin
  LocalQuery.Post;
  LocalQuery.Close;
  LocalQuery.Open;
end;

procedure TDeliveriesForm.EditTableWithOutPost(LocalQuery: TADOQuery);
begin
  LocalQuery.Close;
  LocalQuery.Open;
end;

procedure TDeliveriesForm.G1Click(Sender: TObject);
begin
  MainGrid.DataSource := DataSourcePrice;
  SmartGridWidth(MainGrid);
end;

procedure TDeliveriesForm.FormCreate(Sender: TObject);
begin
  try
  //InitStartDataSet
    ConnectToDB.ConnectionString := Format('Provider=Microsoft.Jet.OLEDB.4.0;Data Source=%s',
    [ExtractFilePath(Application.ExeName)+'bd_suppliers.mdb']);
    ConnectToDB.Connected := true;
    AdoQueryPrice.Active := true;
    AdoQueryDelivers.Active := true;
    QSimplePrice.Active := true;
    QSimpleDelivers.Active := true;
    AdoQueryDeliver.Active := true;
    AdoQueryProduct.Active := true;
  //startScreen
    MainGrid.DataSource := DataSourcePrice;
    MainGrid.Enabled := true;
    SmartGridWidth(MainGrid);
    Except
    on E : Exception do
      ShowMessage(E.ClassName+' ?????? ???? ?????? : '+E.Message);
  end;
end;

end.
