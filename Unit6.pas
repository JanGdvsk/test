unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TReportForm = class(TForm)
    Panel1: TPanel;
    DTPickerStartPeriod: TDateTimePicker;
    Button4: TButton;
    DTPickerEndPeriod: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReportForm: TReportForm;

implementation

{$R *.dfm}
uses unit5;
procedure TReportForm.Button4Click(Sender: TObject);
begin
 RepForm.Show;
 RepForm.frxReport1.ShowReport();
 close;
end;

end.
