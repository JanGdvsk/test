unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Unit7;

type
  TCalendarForm = class(TForm)
    MonthCalendar1: TMonthCalendar;
    procedure MonthCalendar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CalendarForm: TCalendarForm;
  Index: Integer;

implementation

{$R *.dfm}

procedure TCalendarForm.MonthCalendar1Click(Sender: TObject);
begin
  CalendarForm.Visible := False;
 // DeliveriesForm.QueryMain.Edit;
 // DeliveriesForm.QueryMain.Fields[Index].AsDateTime := StrToDate(Copy(DateToStr(MonthCalendar1.Date),0,10));
  //post
end;

end.
