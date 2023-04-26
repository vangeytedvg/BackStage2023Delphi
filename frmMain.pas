unit frmMain;

interface

uses
	Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
	System.Classes, Vcl.Graphics,
	Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, AbView, AbZView, AbBase,
	AbBrowse, AbZBrows, AbZipper, Vcl.StdCtrls, Vcl.FileCtrl, Vcl.ExtCtrls,
	Vcl.ComCtrls, Vcl.ToolWin, System.Actions, Vcl.ActnList, Vcl.Menus, AbUnzper,
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
		ListBox1: TListBox;
		ToolBar2: TToolBar;
		ToolButton2: TToolButton;
		AbZipView1: TAbZipView;
		TbDecompress: TToolBar;
		ToolButton4: TToolButton;
		AbUnZipper1: TAbUnZipper;
		ToolButton5: TToolButton;
		ToolButton6: TToolButton;
		Splitter1: TSplitter;
		Splitter2: TSplitter;
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
		procedure FolderBoxChange(Sender: TObject);
		procedure Action_ExitExecute(Sender: TObject);
		procedure FormCreate(Sender: TObject);
		procedure Action_Add_FolderExecute(Sender: TObject);
		procedure Action_Remove_FolderExecute(Sender: TObject);
		procedure Action_New_ZipFileExecute(Sender: TObject);
		procedure Action_Create_ZipFileExecute(Sender: TObject);
		procedure Action_Save_ZipFileExecute(Sender: TObject);
		procedure Action_Save_BackupsetExecute(Sender: TObject);
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
begin
	ShowMessage('KWAK');
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
	ShowMessage('Remove Folder');
end;

procedure TMainForm.Action_Save_BackupsetExecute(Sender: TObject);
begin
	ShowMessage('Save Backup Set');
end;

procedure TMainForm.Action_Save_ZipFileExecute(Sender: TObject);
begin
	ShowMessage('Save zip file');
end;

procedure TMainForm.FolderBoxChange(Sender: TObject);
begin
	FCurrentFolder := FolderBox.Directory;
	Action_Add_Folder.Enabled := True;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
	StatusB.Panels[0].Text := 'Ready';
	Action_Exit.Enabled := True;
	Action_Create_ZipFile.Enabled := False;
	Action_Add_Folder.Enabled := False;
	Action_Save_Backupset.Enabled := False;
  Action_Remove_Folder.Enabled := False;
end;

end.
