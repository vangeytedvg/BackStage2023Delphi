unit frmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, AbView, AbZView, AbBase,
  AbBrowse, AbZBrows, AbZipper, Vcl.StdCtrls, Vcl.FileCtrl, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, System.Actions, Vcl.ActnList, Vcl.Menus, AbUnzper,
  Inifiles,
  System.ImageList, Vcl.ImgList;

type
  TMainForm = class(TForm)
    Zipper: TAbZipper;
    Panel1: TPanel;
    DriveBox: TDriveComboBox;
    FolderBox: TDirectoryListBox;
    FilesBox: TFileListBox;
    TbMain: TToolBar;
    StatusB: TStatusBar;
    Pages: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ActionList: TActionList;
    MainMenu: TMainMenu;
    MnuFile: TMenuItem;
    MnuFile_Exit: TMenuItem;
    Action_Exit: TAction;
    Label2: TLabel;
    LblCurrentFolder: TLabel;
    BackupSetList: TListBox;
    ToolBar2: TToolBar;
    ToolButton2: TToolButton;
    AbZipView1: TAbZipView;
    TbDecompress: TToolBar;
    ToolButton4: TToolButton;
    AbUnZipper1: TAbUnZipper;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    SplitterNavigate: TSplitter;
    SplitterMain: TSplitter;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ImageList1: TImageList;
    ToolButton7: TToolButton;
    ToolButton10: TToolButton;
    ToolButton1: TToolButton;
    Action_New_ZipFile: TAction;
    Action_Create_ZipFile: TAction;
    Action_Save_ZipFile: TAction;
    Action_Save_Backupset: TAction;
    Action_Add_Folder: TAction;
    Action_Remove_Folder: TAction;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure FolderBoxChange(Sender: TObject);
    procedure Action_ExitExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action_Add_FolderExecute(Sender: TObject);
    procedure Action_Remove_FolderExecute(Sender: TObject);
    procedure Action_New_ZipFileExecute(Sender: TObject);
    procedure Action_Create_ZipFileExecute(Sender: TObject);
    procedure Action_Save_ZipFileExecute(Sender: TObject);
    procedure Action_Save_BackupsetExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BackupSetListClick(Sender: TObject);
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

procedure TMainForm.Action_Add_FolderExecute(Sender: TObject);
// Add the selected folder to the Backup Set List
var
  SelectedFolder: string;
  Itemindex: Integer;
begin
  SelectedFolder := LblCurrentFolder.Caption;
  // Verify that the folder is not already selected
  ItemIndex := BackupSetList.Items.IndexOf(SelectedFolder);
  if Itemindex = -1 then
  begin
    // Folder can be added
    BackupSetList.Items.Add(Selectedfolder);
  end
  else
    ShowMessage('That folder is already in the backup set!');
end;

procedure TMainForm.Action_Create_ZipFileExecute(Sender: TObject);
begin
  ShowMessage('Create Zip');
end;

procedure TMainForm.Action_ExitExecute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMainForm.Action_New_ZipFileExecute(Sender: TObject);
begin
  ShowMessage('New Backupset');
end;

procedure TMainForm.Action_Remove_FolderExecute(Sender: TObject);
begin
  BackupSetList.DeleteSelected;
  // Check if we still have items left
  if BackupSetList.Count = 0 then
    Action_Remove_Folder.Enabled := False;

end;

procedure TMainForm.Action_Save_BackupsetExecute(Sender: TObject);
begin
  ShowMessage('Save Backup Set');
end;

procedure TMainForm.Action_Save_ZipFileExecute(Sender: TObject);
begin
  ShowMessage('Save zip file');
end;

procedure TMainForm.BackupSetListClick(Sender: TObject);
begin
  Action_Remove_Folder.Enabled := True;
end;

procedure TMainForm.FolderBoxChange(Sender: TObject);
begin
  FCurrentFolder := FolderBox.Directory;
  Action_Add_Folder.Enabled := True;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
// Store the form position
var
  Inifile: TInifile;
begin
  Inifile := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  try
    // Form postion
    IniFile.WriteInteger('Mainform', 'left', Self.Left);
    IniFile.WriteInteger('Mainform', 'top', Self.Top);
    Inifile.WriteInteger('FileBox', 'height', FilesBox.Height);

  finally
    Inifile.Free;
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
  Inifile: Tinifile;
begin
  // Load the ini file
  Inifile := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  try
    Self.Left := Inifile.ReadInteger('Mainform', 'left', Left);
    Self.Top := Inifile.ReadInteger('Mainform', 'top', Top);
    Filesbox.Height := Inifile.ReadInteger('FileBox', 'height',
      FilesBox.Height);
  finally
    Inifile.Free;
  end;

  // Enable / disable buttons on startup
  StatusB.Panels[0].Text := 'Ready';
  Action_Exit.Enabled := True;
  Action_Create_ZipFile.Enabled := False;
  Action_Add_Folder.Enabled := False;
  Action_Save_Backupset.Enabled := False;
  Action_Remove_Folder.Enabled := False;
end;

end.
