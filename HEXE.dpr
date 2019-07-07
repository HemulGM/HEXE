program HEXE;

uses
  Vcl.Forms,
  HEXE.Main in 'HEXE.Main.pas' {FormMain},
  HEXE.Utils in 'HEXE.Utils.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
