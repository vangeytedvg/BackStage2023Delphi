program BackStage2023;

uses
  Vcl.Forms,
  frmMain in 'frmMain.pas' {MainForm},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Graphite');
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
