unit frmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, AbView, AbZView, AbBase,
  AbBrowse, AbZBrows, AbZipper, Vcl.StdCtrls, Vcl.FileCtrl, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, System.Actions, Vcl.ActnList, Vcl.Menus, AbUnzper;

type
  TMainForm = class(TForm)
    Zipper: TAbZipper;
    Panel1: TPanel;
    DriveBox: TDriveComboBox;
    FolderBox: TDirectoryListBox;
    FilesBox: TFileListBox;
    tbMain: TToolBar;
    StatusB: TStatusBar;
    Pages: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ActionList1: TActionList;
    MainMenu: TMainMenu;
    mnuFile: TMenuItem;
    mnuFile_Exit: TMenuItem;
    Action_Exit: TAction;
    Label2: TLabel;
    lblCurrentFolder: TLabel;
    ListBox1: TListBox;
    ToolBar2: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    AbZipView1: TAbZipView;
    tbDecompress: TToolBar;
    ToolButton4: TToolButton;
    AbUnZipper1: TAbUnZipper;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    procedure FolderBoxChange(Sender: TObject);
    procedure Action_ExitExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FCurrentFolder: string;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.Action_ExitExecute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMainForm.FolderBoxChange(Sender: TObject);
begin
  FCurrentFolder:=FolderBox.Directory;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  StatusB.Panels[0].Text := 'Ready';
end;

end.
