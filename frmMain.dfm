object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'BackStage 2034'
  ClientHeight = 585
  ClientWidth = 882
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object Panel1: TPanel
    Left = 0
    Top = 64
    Width = 273
    Height = 496
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alLeft
    TabOrder = 0
    ExplicitTop = 0
    ExplicitHeight = 585
    object Label1: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 351
      Width = 265
      Height = 17
      Align = alTop
      Caption = 'Files in folder'
      ExplicitLeft = 8
      ExplicitTop = 296
      ExplicitWidth = 78
    end
    object DriveBox: TDriveComboBox
      Left = 1
      Top = 1
      Width = 271
      Height = 23
      Align = alTop
      DirList = FolderBox
      TabOrder = 0
      ExplicitLeft = 16
      ExplicitTop = 12
      ExplicitWidth = 217
    end
    object FolderBox: TDirectoryListBox
      AlignWithMargins = True
      Left = 4
      Top = 27
      Width = 265
      Height = 318
      Align = alTop
      DirLabel = lblCurrentFolder
      FileList = FilesBox
      ItemHeight = 17
      ParentColor = True
      TabOrder = 1
      OnChange = FolderBoxChange
      ExplicitLeft = 6
      ExplicitTop = 30
    end
    object FilesBox: TFileListBox
      AlignWithMargins = True
      Left = 4
      Top = 374
      Width = 265
      Height = 118
      Align = alClient
      ItemHeight = 17
      TabOrder = 2
      ExplicitLeft = -106
      ExplicitTop = 329
      ExplicitWidth = 378
      ExplicitHeight = 241
    end
  end
  object tbMain: TToolBar
    Left = 0
    Top = 0
    Width = 882
    Height = 64
    ButtonHeight = 64
    ButtonWidth = 64
    Caption = 'tbMain'
    TabOrder = 1
    object ToolButton5: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton5'
      ImageIndex = 0
    end
    object ToolButton6: TToolButton
      Left = 64
      Top = 0
      Caption = 'ToolButton6'
      ImageIndex = 1
    end
    object ToolButton7: TToolButton
      Left = 128
      Top = 0
      Caption = 'ToolButton7'
      ImageIndex = 2
    end
  end
  object StatusB: TStatusBar
    Left = 0
    Top = 560
    Width = 882
    Height = 25
    Panels = <
      item
        Width = 50
      end
      item
        Width = 150
      end>
  end
  object Pages: TPageControl
    Left = 273
    Top = 64
    Width = 609
    Height = 496
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Compression'
      object Label2: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 595
        Height = 17
        Align = alTop
        Caption = 'Current Folder:'
        ExplicitLeft = 8
        ExplicitWidth = 87
      end
      object lblCurrentFolder: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 26
        Width = 595
        Height = 17
        Align = alTop
        Caption = 'C:\...\Embarcadero\Studio\21.0\bin'
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
        ExplicitLeft = 101
        ExplicitTop = 3
        ExplicitWidth = 203
      end
      object ListBox1: TListBox
        AlignWithMargins = True
        Left = 3
        Top = 103
        Width = 595
        Height = 358
        Align = alClient
        ItemHeight = 17
        TabOrder = 0
        ExplicitLeft = 4
        ExplicitTop = 104
        ExplicitWidth = 421
        ExplicitHeight = 277
      end
      object ToolBar2: TToolBar
        AlignWithMargins = True
        Left = 3
        Top = 49
        Width = 595
        Height = 48
        ButtonHeight = 48
        ButtonWidth = 48
        Caption = 'ToolBar2'
        TabOrder = 1
        object ToolButton1: TToolButton
          Left = 0
          Top = 0
          Caption = 'ToolButton1'
          ImageIndex = 0
        end
        object ToolButton2: TToolButton
          Left = 48
          Top = 0
          Caption = 'ToolButton2'
          ImageIndex = 1
        end
        object ToolButton3: TToolButton
          Left = 96
          Top = 0
          Caption = 'ToolButton3'
          ImageIndex = 2
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Decompression'
      ImageIndex = 1
      object AbZipView1: TAbZipView
        Left = 0
        Top = 49
        Width = 601
        Height = 415
        Align = alClient
        Attributes = [vaItemName, vaPacked, vaTimeStamp, vaFileSize, vaPath]
        Colors.Selected = clHighlight
        Colors.SelectedText = clHighlightText
        Colors.Alternate = clAqua
        Colors.AlternateText = clRed
        Colors.Deleted = clYellow
        Colors.DeletedText = clNavy
        Headings.Strings = (
          'Name'
          'Packed'
          'Method'
          'Ratio (%)'
          'CRC32'
          'Attributes'
          'Format'
          'Encrypted'
          'Time Stamp'
          'Size'
          'Version Made'
          'Version Needed'
          'Path')
        DefaultColWidth = 150
        DefaultRowHeight = 19
        DisplayOptions = [doColSizing]
        HeaderRowHeight = 21
        SortAttributes = []
        TabOrder = 0
        ExplicitLeft = 24
        ExplicitTop = 80
        ExplicitWidth = 320
        ExplicitHeight = 120
        RowHeights = (
          21
          19)
      end
      object tbDecompress: TToolBar
        Left = 0
        Top = 0
        Width = 601
        Height = 49
        ButtonHeight = 48
        ButtonWidth = 48
        Caption = 'tbDecompress'
        TabOrder = 1
        object ToolButton4: TToolButton
          Left = 0
          Top = 0
          Caption = 'ToolButton4'
          ImageIndex = 0
        end
      end
    end
  end
  object Zipper: TAbZipper
    AutoSave = False
    BaseDirectory = 'C:\temp'
    DOSMode = False
    FileName = 'C:\temp\ZipTest.zip'
    Left = 800
    Top = 40
  end
  object ActionList1: TActionList
    Left = 357
    Top = 492
    object Action_Exit: TAction
      Caption = 'E&xit'
      OnExecute = Action_ExitExecute
    end
  end
  object MainMenu: TMainMenu
    Left = 485
    Top = 492
    object mnuFile: TMenuItem
      Caption = '&File'
      object mnuFile_Exit: TMenuItem
        Action = Action_Exit
      end
    end
  end
  object AbUnZipper1: TAbUnZipper
    Left = 797
    Top = 484
  end
end
