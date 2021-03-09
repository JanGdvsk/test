program Project5;

uses
  Vcl.Forms,
  Unit7 in 'Unit7.pas' {DeliveriesForm},
  Unit4 in 'Unit4.pas' {XchngForm},
  Unit5 in 'Unit5.pas' {RepForm},
  Unit6 in 'Unit6.pas' {ReportForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDeliveriesForm, DeliveriesForm);
  Application.CreateForm(TXchngForm, XchngForm);
  Application.CreateForm(TRepForm, RepForm);
  Application.CreateForm(TReportForm, ReportForm);
  Application.Run;
end.
