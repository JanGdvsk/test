unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unit1, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBLookup, Vcl.ExtCtrls,
  Unit7;

type
  TFormPrice = class(TForm)
    Panel1: TPanel;
    DBLookupCombo1: TDBLookupCombo;
    DBGrid1: TDBGrid;
    DBLookupCombo2: TDBLookupCombo;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DBEdit1: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrice: TFormPrice;

implementation

{$R *.dfm}

end.
