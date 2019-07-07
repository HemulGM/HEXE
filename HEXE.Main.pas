unit HEXE.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, System.UITypes,
  Vcl.ComCtrls, HGM.Controls.SpinEdit, HGM.Popup, Vcl.Buttons, sSpeedButton, HGM.Common.Settings,
  HGM.Button, System.ImageList, Vcl.ImgList, PngImageList, HGM.Controls.Labels,
  Vcl.Imaging.pngimage, Vcl.Menus, acPNG;

type
  TCodePage = (cpUTF, cpAnsi, cpOEM, cpMac, cpEBCDIC);

  TNumFormat = (nfHEX, nfDEC, nfOCT);

  TFormMain = class(TForm)
    ScrollBoxMain: TScrollBox;
    ScrollBarEditor: TScrollBar;
    StringGridEditor: TStringGrid;
    PanelEditor: TPanel;
    MemoChars: TRichEdit;
    FileOpenDialog: TFileOpenDialog;
    PanelMenu: TPanel;
    PanelMenuNavigate: TPanel;
    ButtonFlatMenuHelp: TButtonFlat;
    ButtonFlatMenuStart: TButtonFlat;
    ButtonFlatMenuFile: TButtonFlat;
    PanelMenuPages: TPanel;
    Shape4: TShape;
    Shape11: TShape;
    PageControlMenu: TPageControl;
    TabSheetMenuStart: TTabSheet;
    Shape5: TShape;
    PanelBarTasks: TPanel;
    Panel32: TPanel;
    TabSheetMenuHelp: TTabSheet;
    Shape24: TShape;
    PanelBarHelp: TPanel;
    Panel62: TPanel;
    PanelMenuFile: TPanel;
    Shape25: TShape;
    Shape26: TShape;
    Shape32: TShape;
    PanelMenuFileActions: TPanel;
    Shape21: TShape;
    Shape30: TShape;
    ButtonFlatMenuOpen: TButtonFlat;
    ButtonFlatMenuQuit: TButtonFlat;
    PanelMenuFileLastFiles: TPanel;
    Shape31: TShape;
    Panel69: TPanel;
    ListViewRecent: TListView;
    PanelMenuFileStatus: TPanel;
    Shape22: TShape;
    Shape33: TShape;
    Shape35: TShape;
    PanelMenuFileNav: TPanel;
    Shape34: TShape;
    ButtonFlatMenuFileClose: TButtonFlat;
    ButtonFlatMenuView: TButtonFlat;
    TabSheetMenuView: TTabSheet;
    ImageList32: TImageList;
    ButtonFlatOpenFile: TButtonFlat;
    Shape2: TShape;
    PanelBarView: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    SpinEditSize: TlkSpinEdit;
    Shape6: TShape;
    PanelBarTextView: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    ComboBoxCodePage: TComboBox;
    Panel12: TPanel;
    Label3: TLabel;
    ComboBoxNumFormat: TComboBox;
    Shape1: TShape;
    Shape23: TShape;
    PanelBarSerach: TPanel;
    Panel24: TPanel;
    Panel30: TPanel;
    EditSearch: TEdit;
    ButtonSearch: TButtonFlat;
    PanelBarSearchParam: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel3: TPanel;
    RadioButtonStrIgnor: TRadioButton;
    RadioButtonStr: TRadioButton;
    RadioButtonNum: TRadioButton;
    Panel4: TPanel;
    RadioButtonStartPos: TRadioButton;
    RadioButtonStartBegin: TRadioButton;
    RadioButtonSearchData: TRadioButton;
    RadioButtonSearchAddr: TRadioButton;
    Shape3: TShape;
    PanelBarTools: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    EditHEX: TEdit;
    Label4: TLabel;
    EditDEC: TEdit;
    Label5: TLabel;
    LinkOpenFile: ThLink;
    PanelStatusBar: TPanel;
    ButtonFlatStatus: TButtonFlat;
    ButtonFlatAddr: TButtonFlat;
    Shape7: TShape;
    ButtonFlatRecent: TButtonFlat;
    PopupMenuRecent: TPopupMenu;
    SpeedButtonMenuInfo: TButtonFlat;
    PanelAbout: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    LinkGit: ThLink;
    LinkSite: ThLink;
    Label8: TLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure StringGridEditorSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FormResize(Sender: TObject);
    procedure ScrollBarEditorScroll(Sender: TObject; ScrollCode: TScrollCode;
      var ScrollPos: Integer);
    procedure StringGridEditorMouseWheelDown(Sender: TObject;
      Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure StringGridEditorMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure StringGridEditorFixedCellClick(Sender: TObject; ACol,
      ARow: Integer);
    procedure StringGridEditorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StringGridEditorDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure MemoCharsClick(Sender: TObject);
    procedure MemoCharsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MemoCharsMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure MemoCharsMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure StringGridEditorSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: string);
    procedure ComboBoxCodePageChange(Sender: TObject);
    procedure ButtonSearchClick(Sender: TObject);
    procedure SpinEditSizeChange(Sender: TObject);
    procedure ButtonFlatMenuFileClick(Sender: TObject);
    procedure ButtonFlatMenuFileCloseClick(Sender: TObject);
    procedure ButtonFlatMenuStartClick(Sender: TObject);
    procedure ButtonFlatMenuViewClick(Sender: TObject);
    procedure ButtonFlatMenuHelpClick(Sender: TObject);
    procedure ButtonFlatOpenFileClick(Sender: TObject);
    procedure ButtonFlatMenuQuitClick(Sender: TObject);
    procedure EditHEXChange(Sender: TObject);
    procedure EditDECChange(Sender: TObject);
    procedure ComboBoxNumFormatChange(Sender: TObject);
    procedure ListViewRecentClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ButtonFlatRecentClick(Sender: TObject);
    procedure MenuItemRecentClick(Sender: TObject);
    procedure SpeedButtonMenuInfoClick(Sender: TObject);
    procedure LinkSiteClick(Sender: TObject);
  private
    FFileName: string;
    FGoToByte: Integer;
    FGoTo: Boolean;
    FIsOpenFile: Boolean;
    FCodePage: TCodePage;
    FNumFormat: TNumFormat;
    FColCount: Integer;
    fSize: Int64;
    MaxLineCount: Integer;
    StartByte: Int64;
    FMenuFilePopup: TFormPopup;
    FLockChangeEvent: Boolean;
    FLastItems: TStringList;
    FSettings: TSettingsReg;
    procedure FreePopup;
    procedure LoadLastItems;  
    procedure UpdateLastItems;  
    procedure SaveLastItems;
    procedure Navigate(Tab: TTabSheet);
    function GetHEXChar(Value: Byte): string;
    procedure FOpenFile(FileName: string);
    procedure UpdateParams;
    procedure UpdateView;
    procedure ScrollGrid(Scroll: TScrollCode);
    procedure UpdateMemoCursor(C, R: Integer);
    procedure RepaintGridOffset;
    function FindInFile(Value: string; StartByte: Int64; TypeFind: Byte): Int64;
    procedure GoToAddr(Addr: Int64);
    function GetStrNum(Value: Int64; Nums: Integer): string;
    procedure SetIsOpenFile(const Value: Boolean);
    function GetCurrentAddress(C, R: Integer): Int64;
    procedure OnChangeCurrentAddress(C, R: Integer);
  public
    property IsOpenFile: Boolean read FIsOpenFile write SetIsOpenFile;
  end;
  
const
  FLastCount: Integer = 20;

var
  FormMain: TFormMain;

  function GetFileSizeEx(hFile: THandle; var FileSize: TLargeInteger): BOOL; stdcall; external kernel32 name 'GetFileSizeEx';

implementation

uses Math, HEXE.Utils, ShellApi;

{$R *.dfm}

function FileSize(FileName: string): Int64;
var
  hFile: Integer;
begin
  hFile := FileOpen(FileName, fmOpenRead);
  if not GetFileSizeEx(hFile, Result) then Result := -1;
  FileClose(hFile);
end;

procedure TFormMain.GoToAddr(Addr: Int64);
begin
  if (Addr div FColCount) * FColCount > fSize then Exit;
  FGoTo := True;
  StartByte := (Addr div FColCount) * FColCount;
  FGoToByte := Addr mod FColCount;
  UpdateView;
  FGoTo := False;
end;

procedure TFormMain.LinkSiteClick(Sender: TObject);
begin
  ShellExecute(Handle, 'open', PChar((Sender as ThLink).Caption), nil, nil, SW_NORMAL);
end;

procedure TFormMain.ListViewRecentClick(Sender: TObject);
begin
  if Assigned(FMenuFilePopup) then
    FMenuFilePopup.Close;
  if Assigned(ListViewRecent.Selected) then
    FOpenFile(ListViewRecent.Selected.SubItems[0]);
end;

procedure TFormMain.LoadLastItems;
var
  i: Integer;
  s: string;
begin
  FLastItems.BeginUpdate;
  FLastItems.Clear;
  for i := 0 to FLastCount-1 do
  begin  
    s := FSettings.GetStr('Recents', 'File'+i.ToString, '');
    if s <> '' then 
    begin
      FLastItems.Add(s);
    end;
  end;  
  FLastItems.EndUpdate;  
  UpdateLastItems;
end;

procedure TFormMain.UpdateLastItems;
var
  i: Integer;
begin
  ListViewRecent.Items.BeginUpdate;
  ListViewRecent.Items.Clear;
  for i := 0 to FLastItems.Count-1 do
  begin
    with ListViewRecent.Items.Add do
    begin
      Caption := FLastItems[i];
      SubItems.Add(FLastItems[i]);
    end;
  end;
  ListViewRecent.Items.EndUpdate;
end;

procedure TFormMain.SaveLastItems;
var
  i: Integer;
begin
  for i := 0 to Min(FLastItems.Count-1, FLastCount-1) do
  begin
    FSettings.SetStr('Recents', 'File'+i.ToString, FLastItems[i]);
  end;
end;

procedure TFormMain.ButtonFlatMenuFileCloseClick(Sender: TObject);
begin
  Winapi.Windows.SetFocus(Handle);
end;

procedure TFormMain.ButtonFlatMenuFileClick(Sender: TObject);
var
  pt: TPoint;
begin
  pt := ButtonFlatMenuFile.ClientToScreen(Point(0, 0));
  FMenuFilePopup := TFormPopup.CreatePopup(Self, PanelMenuFile, FreePopup, pt.X, pt.Y, [psAnimate]);
end;

procedure TFormMain.ButtonFlatMenuHelpClick(Sender: TObject);
begin
  Navigate(TabSheetMenuHelp);
end;

procedure TFormMain.ButtonFlatMenuQuitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormMain.ButtonFlatMenuStartClick(Sender: TObject);
begin
  Navigate(TabSheetMenuStart);
end;

procedure TFormMain.ButtonFlatMenuViewClick(Sender: TObject);
begin
  Navigate(TabSheetMenuView);
end;

procedure TFormMain.ButtonFlatOpenFileClick(Sender: TObject);
begin
  if FileOpenDialog.Execute then
    FOpenFile(FileOpenDialog.FileName);
end;

procedure TFormMain.ButtonFlatRecentClick(Sender: TObject);
var
  i: Integer;
  Item: TMenuItem;
  Pt: TPoint;
begin
  PopupMenuRecent.Items.Clear;
  for i := 0 to FLastItems.Count-1 do
  begin
    Item := TMenuItem.Create(PopupMenuRecent);
    Item.Caption := FLastItems[i];
    Item.OnClick := MenuItemRecentClick;
    Item.Tag := i;
    PopupMenuRecent.Items.Add(Item);
  end;
  Pt := ButtonFlatOpenFile.ClientToScreen(Point(0, 0));
  PopupMenuRecent.Popup(Pt.X, Pt.Y+ButtonFlatOpenFile.Height);
end;

procedure TFormMain.ButtonSearchClick(Sender: TObject);
var
  Start: Integer;
  Kind: Byte;
  Addr: Int64;
begin
  Addr := -1;
  if RadioButtonSearchAddr.Checked then
  begin
    try
      Addr := StrToInt64('$' + EditSearch.Text);
    except
      begin
        MessageBox(Handle, 'Не верное значение!', 'Ошибка', MB_ICONWARNING or MB_OK);
        Exit;
      end;
    end;
  end
  else
  begin
    if RadioButtonStartPos.Checked then
      Start := StartByte
    else
      Start := 0;
    if RadioButtonNum.Checked then
      Kind := 1
    else if RadioButtonStr.Checked then
      Kind := 2
    else if RadioButtonStrIgnor.Checked then
      Kind := 3;

    Addr := FindInFile(EditSearch.Text, Start, Kind);
  end;
  if Addr >= 0 then
  begin
    GoToAddr(Addr);
  end;
end;

procedure TFormMain.ComboBoxCodePageChange(Sender: TObject);
begin
  FCodePage := TCodePage(ComboBoxCodePage.ItemIndex);
  UpdateView;
end;

procedure TFormMain.ComboBoxNumFormatChange(Sender: TObject);
begin
  FNumFormat := TNumFormat(ComboBoxNumFormat.ItemIndex);
  UpdateView;
end;

procedure TFormMain.EditDECChange(Sender: TObject);
begin
  if FLockChangeEvent then Exit;

  if EditDEC.Text = '' then
  begin
    EditHEX.Text := '';
    Exit;
  end;
  FLockChangeEvent := True;
  try
    EditHEX.Text := IntToHex(StrToInt(EditDEC.Text), 2);
  except
    EditHEX.Text := '';
  end;
  FLockChangeEvent := False;
end;

procedure TFormMain.EditHEXChange(Sender: TObject);
begin
  if FLockChangeEvent then Exit;

  if EditHEX.Text = '' then
  begin
    EditDEC.Text := '';
    Exit;
  end;
  FLockChangeEvent := True;
  try
    EditDEC.Text := StrToInt('$'+EditHEX.Text).ToString;
  except
    EditDEC.Text := '';
  end;
  FLockChangeEvent := False;
end;

procedure TFormMain.FOpenFile(FileName: string);
var i: Integer;
begin
  FFileName := FileName;
  
  repeat
   i := FLastItems.IndexOf(FFileName);
   if i >= 0 then FLastItems.Delete(i);   
  until i < 0;
  FLastItems.Insert(0, FFileName);
  UpdateLastItems;
  
  IsOpenFile := True;
  Caption := 'HEXE - ' + FileName;
  fSize := FileSize(FileName);
  StartByte := 0;
  UpdateParams;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  FLastItems := TStringList.Create;
  FSettings := TSettingsReg.Create(rrHKCU, 'Software\HEXE');
  IsOpenFile := False;
  FLockChangeEvent := False;
  FGoTo := False;
  FColCount := 24;
  FGoToByte := 0;
  FNumFormat := nfHEX;
  FCodePage := cpAnsi;
  LinkOpenFile.Left := ClientWidth div 2 - LinkOpenFile.Width div 2;
  StringGridEditor.ColWidths[0] := 80;
  StringGridEditor.RowHeights[0] := 30;
  Navigate(TabSheetMenuStart);

  LoadLastItems;
end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
  SaveLastItems;
  FSettings.Free;
  FLastItems.Free;
end;

procedure TFormMain.FormResize(Sender: TObject);
begin
  UpdateParams;
end;

procedure TFormMain.FreePopup;
begin
  FMenuFilePopup := nil;
end;

function TFormMain.GetHEXChar(Value: Byte): string;

function StrAnsiToOem(const aStr : String) : String;
var
  Len : Integer;
begin
  Result := '';
  Len := Length(aStr);
  if Len = 0 then Exit;
  SetLength(Result, Len);
  CharToOemBuffA(PAnsiChar(aStr), PAnsiChar(Result), Len);
end;

begin
  Result := '';
  if (Value < 32) or (Value in [127..160, 173]) then
    Result := '.'
  else
  begin

    case FCodePage of
      cpUTF: Result := Char(Value);
      cpAnsi: Result := AnsiChar(Value);
      cpOEM: Result := StrAnsiToOem(Char(Value));
      cpMac: ;
      cpEBCDIC: ;
    end;

  end;
end;

function TFormMain.GetStrNum(Value: Int64; Nums: Integer): string;
begin
  case FNumFormat of
    nfHEX: Result := IntToHex(Value, 2);
    nfDEC: Result := IntToStr(Value);
    nfOCT: Result := DecToOct(Value);
  end;
  while Result.Length < Nums do Result := '0' + Result;
end;

procedure TFormMain.MemoCharsClick(Sender: TObject);
var R, C: Integer;
begin
  R := MemoChars.SelStart div (FColCount + 1) + 1;
  C := MemoChars.SelStart mod (FColCount + 1) + 1;
  StringGridEditor.Selection := TGridRect(Rect(C, R, C, R));
  RepaintGridOffset;
  //MemoChars.SelLength := 1;
end;

procedure TFormMain.MemoCharsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  MemoCharsClick(nil);
end;

procedure TFormMain.MemoCharsMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  ScrollGrid(scLineDown);
  Handled := True;
end;

procedure TFormMain.MemoCharsMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  ScrollGrid(scLineUp);
  Handled := True;
end;

procedure TFormMain.MenuItemRecentClick(Sender: TObject);
begin 
  FOpenFile(FLastItems[(Sender as TMenuItem).Tag]);
end;

procedure TFormMain.Navigate(Tab: TTabSheet);

  procedure SetMenuButtonActive(Button: TButtonFlat; Value: Boolean);
  begin
    case Value of
      True:
        Button.ColorNormal := $00F7F6F5;
      False:
        Button.ColorNormal := clWhite;
    end;
  end;

begin
  PageControlMenu.ActivePage := Tab;
  SetMenuButtonActive(ButtonFlatMenuStart, PageControlMenu.ActivePage = TabSheetMenuStart);
  SetMenuButtonActive(ButtonFlatMenuView, PageControlMenu.ActivePage = TabSheetMenuView);
  SetMenuButtonActive(ButtonFlatMenuHelp, PageControlMenu.ActivePage = TabSheetMenuHelp);
end;

procedure TFormMain.UpdateView;
var
  Fs: TFileStream;
  R, C, i: Integer;
  BytesCount, MaxBytesCount, Offset: Int64;
  Ar: array[0..10000] of Byte;
  STxt: string;
begin
  if not FIsOpenFile then Exit;

  try
    Fs := TFileStream.Create(FFileName, fmOpenRead);
  except
    on E:Exception do
    begin
      MessageBox(Handle, PChar('Невозможно открыть файл.'#13#10+E.Message), 'Ошибка', MB_ICONERROR or MB_OK);
      Exit;
    end;
  end;

  MaxBytesCount := MaxLineCount * FColCount;
  if fSize - StartByte >= MaxBytesCount then
    BytesCount := MaxBytesCount
  else
    BytesCount := fSize - StartByte;

  StringGridEditor.Perform(WM_SETREDRAW, 0, 0);
  MemoChars.Lines.BeginUpdate;
  MemoChars.Lines.Clear;
  Fs.Seek(StartByte, soBeginning);
  Offset := Fs.Position;
  Fs.Read(Ar, BytesCount);
  Fs.Free;

  for C := 0 to StringGridEditor.ColCount-1 do
    for R := 0 to StringGridEditor.RowCount-1 do
    begin
      if R = 0 then
      begin
        if C = 0 then StringGridEditor.Cells[C, R] := 'Сдвиг'
        else StringGridEditor.Cells[C, R] := GetStrNum(C-1, 2);
      end
      else StringGridEditor.Cells[C, R] := '';
    end;
  STxt := '';
  C := 1;

  for i := 0 to BytesCount-1 do
  begin
    R := i div FColCount + 1;
    if (i = 0) or (i mod FColCount = 0) then
    begin
      StringGridEditor.Cells[0, R] := GetStrNum(Offset + i, 8);
      if STxt <> '' then
        MemoChars.Lines.Add(STxt);
      STxt := '';
      C := 1;
    end;

    StringGridEditor.Cells[C, R] := IntToHex(Ar[i], 2);
    Inc(C);
    STxt := STxt + GetHEXChar(Ar[i]);
  end;
  if STxt <> '' then
    MemoChars.Lines.Add(STxt);
  StringGridEditor.Perform(WM_SETREDRAW, 1, 0);
  StringGridEditor.Invalidate;
  //StringGridEditor.Repaint;
  if MemoChars.Lines.Count > 0 then
  begin
    STxt := MemoChars.Text;
    Delete(STxt, STxt.Length-1, 4);
    MemoChars.Text := STxt;
  end;

  MemoChars.Lines.EndUpdate;

  if FGoTo then
  begin
    StringGridEditor.Row := 1;
    StringGridEditor.Col := FGoToByte + 1;
  end;

  OnChangeCurrentAddress(StringGridEditor.Col, StringGridEditor.Row);
end;

procedure TFormMain.ScrollBarEditorScroll(Sender: TObject; ScrollCode: TScrollCode;
  var ScrollPos: Integer);
begin
  if not FIsOpenFile then Exit;
  if fSize = 0 then Exit;

  case ScrollCode of
    TScrollCode.scLineUp: StartByte := Max(0, StartByte - FColCount);
    TScrollCode.scLineDown: StartByte := Min(fSize - FColCount, StartByte + FColCount);
    TScrollCode.scPageUp: StartByte := Max(0, StartByte - FColCount * MaxLineCount);
    TScrollCode.scPageDown: StartByte := Min(fSize - FColCount, StartByte + FColCount * MaxLineCount);
    TScrollCode.scPosition: StartByte := Round(ScrollPos / 100 * fSize);
    TScrollCode.scTrack: StartByte := Round(ScrollPos / 100 * fSize);
    TScrollCode.scTop: StartByte := 0;
    TScrollCode.scBottom: StartByte := fSize - FColCount;
    //TScrollCode.scEndScroll: StartByte := fSize - FColCount;
  end;
  if StartByte <> 0 then StartByte := StartByte  div FColCount * FColCount;

  ScrollPos := Round((100 / fSize) * StartByte);
  UpdateView;
end;

procedure TFormMain.StringGridEditorDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  R: TRect;
  Str: string;
begin
  with StringGridEditor.Canvas do
  begin
    //Заголовки
    if ARow = 0 then
    begin
      Brush.Color := clWhite;
      FillRect(Rect);
      R := Rect;
      Str := StringGridEditor.Cells[ACol, ARow];
      Font.Assign(StringGridEditor.Font);
      Font.Color := clNavy;
      TextRect(R, Str, [tfSingleLine, tfVerticalCenter, tfCenter]);
    end
    else //Данные
    begin
      {gdSelected, gdFocused, gdFixed, gdRowSelected,
       gdHotTrack, gdPressed}
      if gdSelected in State then
        Brush.Color := $00FEE6CE
      else
        Brush.Color := clWhite;
      FillRect(Rect);
      R := Rect;
      Str := StringGridEditor.Cells[ACol, ARow];
      Font.Assign(StringGridEditor.Font);
      if ACol = 0 then
      begin
        Font.Color := clNavy;
        if ARow <> StringGridEditor.Row then
          Brush.Color := clWhite
        else
          Brush.Color := $00DEDEDE;
        FillRect(Rect);
      end
      else if ACol mod 2 <> 0 then
        Font.Color := clBlack
      else
        Font.Color := $00606080;

      TextRect(R, Str, [tfSingleLine, tfVerticalCenter, tfCenter]);
    end;
  end;
end;

procedure TFormMain.StringGridEditorFixedCellClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  StringGridEditor.Selection := TGridRect(Rect(1, ARow, StringGridEditor.ColCount-1, ARow));
  UpdateMemoCursor(ACol, ARow);
  StringGridEditor.Repaint;
end;

procedure TFormMain.ScrollGrid(Scroll: TScrollCode);
var ScrollPos: Integer;
begin
  ScrollPos := ScrollBarEditor.Position;
  ScrollBarEditorScroll(nil, Scroll, ScrollPos);
  ScrollBarEditor.Position := ScrollPos;
end;

procedure TFormMain.SetIsOpenFile(const Value: Boolean);
begin
  FIsOpenFile := Value;
  PanelEditor.Visible := FIsOpenFile;
end;

procedure TFormMain.SpeedButtonMenuInfoClick(Sender: TObject);
begin
  TFormPopup.CreatePopup(Self, PanelAbout, nil, Left + Width div 2 - PanelAbout.Width div 2, Top + Height div 2 - PanelAbout.Height div 2, [psAnimate, psShadow]);
end;

procedure TFormMain.SpinEditSizeChange(Sender: TObject);
begin
  FColCount := SpinEditSize.Value;
  UpdateParams;
end;

procedure TFormMain.StringGridEditorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_DOWN: if StringGridEditor.Row = StringGridEditor.RowCount-1 then begin Key := 0; ScrollGrid(scLineDown); end;
    VK_UP: if StringGridEditor.Row = 1 then begin Key := 0; ScrollGrid(scLineUp); end;
    VK_NEXT: begin Key := 0; ScrollGrid(scPageDown); end;
    VK_PRIOR: begin Key := 0; ScrollGrid(scPageUp); end;
    VK_RIGHT: if StringGridEditor.Col = StringGridEditor.ColCount-1 then
              begin
                StringGridEditor.Col := 1;
                StringGridEditor.Row := StringGridEditor.Row + 1;
                Key := 0;
              end;
    VK_LEFT:  if (StringGridEditor.Col = 1) and (StringGridEditor.Row > 1) then
              begin
                StringGridEditor.Row := StringGridEditor.Row - 1;
                StringGridEditor.Col := StringGridEditor.ColCount-1;
                Key := 0;
              end;
  end;
end;

procedure TFormMain.StringGridEditorMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  ScrollGrid(scLineDown);
  Handled := True;
end;

procedure TFormMain.StringGridEditorMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  ScrollGrid(scLineUp);
  Handled := True;
end;

procedure TFormMain.UpdateMemoCursor(C, R: Integer);
begin
  if C = 0 then Exit;
  if R = 0 then Exit;
  MemoChars.SelStart := ((R-1) * FColCount + (R-1)) + C - 1;
  MemoChars.SelLength := 1;
end;

procedure TFormMain.RepaintGridOffset;
var
  i: Integer;
begin
  for i := 1 to StringGridEditor.RowCount-1 do
  begin
    StringGridEditor.Cells[0, i] := StringGridEditor.Cells[0, i];
  end;
end;

function TFormMain.GetCurrentAddress;
begin                  
  if (C = 0) or (R = 0) then Exit(-1);
  Result := StartByte + ((R-1) * FColCount + C-1);
end;

procedure TFormMain.OnChangeCurrentAddress(C, R: Integer);
begin
  ButtonFlatAddr.Caption := GetStrNum(GetCurrentAddress(C, R), 2);  
  if (C = 0) or (R = 0) then Exit;
  UpdateMemoCursor(C, R);
end;

procedure TFormMain.StringGridEditorSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if StringGridEditor.Cells[ACol, ARow] = '' then
  begin
    CanSelect := False;
    Exit;
  end;
  
  OnChangeCurrentAddress(ACol, ARow);
  RepaintGridOffset;
end;

procedure TFormMain.StringGridEditorSetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: string);
var
  FS: TFileStream;
  B: Byte;
begin
  if StringGridEditor.Cells[ACol, ARow] = Value then Exit;

  if Value.Length < 2 then Exit;

  try
    B := StrToint('$' + Value);
  except
    begin
      MessageBox(Handle, 'Не верное значение!', 'Ошибка', MB_ICONWARNING or MB_OK);
      Exit;
    end;
  end;

  if MessageBox(Handle, 'Изменить значение?', 'Подтверждение', MB_ICONWARNING or MB_YESNO or MB_DEFBUTTON2) <> ID_YES then Exit;
  FS := TFileStream.Create(FFileName, fmOpenWrite);
  FS.Seek(GetCurrentAddress(ACol, ARow), soBeginning);
  FS.Write(B, 1);
  FS.Free;
  UpdateView;
end;

procedure TFormMain.UpdateParams;
begin
  if not FIsOpenFile then Exit;
  MaxLineCount := (StringGridEditor.Height div StringGridEditor.DefaultRowHeight) - 2;
  StringGridEditor.ColCount := FColCount + 1;
  StringGridEditor.RowCount := MaxLineCount + 1;
  StringGridEditor.Width := 80 + (FColCount - 1) * StringGridEditor.DefaultColWidth + 30;
  MemoChars.Width := FColCount * 9;
  if (fSize div FColCount - (MaxLineCount - 2)) > 1 then
  begin
    ScrollBarEditor.Max := 100;
    ScrollBarEditor.LargeChange := MaxLineCount - 1;
    ScrollBarEditor.Enabled := True;
  end
  else
  begin
    ScrollBarEditor.Max := 1;
    ScrollBarEditor.LargeChange := 1;
    ScrollBarEditor.Enabled := False;
  end;

  UpdateView;
  StringGridEditor.Repaint;
end;

function TFormMain.FindInFile(Value: string; StartByte: Int64; TypeFind: Byte): Int64;
var
  FS: TFileStream;
  i: Integer;
  PosInFile: Int64;
  BufferArray: array[1..8192] of Byte;   //Буфер для чтения
  ReadSize: Integer; // = 8192           //Сколько будем читать
  InputArray: array[1..1000] of Byte;    //Что ищем (lower case)
  InputArrayAdd: array[1..1000] of Byte; //Что ищем upper case
  InputArrayLength: Integer;             //Реальный размер массива
  CheckDouble: Boolean;                  //Если ищем по двум массивам
  Size, CurByte: Int64;
  StartByteToRead: Int64;

  function StringToHex(HexStr: string): string;
  var
    i: Integer;
    HexSet: set of Char;
  begin
    if HexStr = '' then
      Exit;
    HexSet := ['0'..'9', 'A'..'F'];
    HexStr := UpperCase(HexStr);
    for i := 1 to Length(HexStr) do
      if HexStr[i] in HexSet then
        Result := Result + HexStr[i];
  end;

begin
  //Если TypeFind = 1, то будет искать 16-ричное число
  //Если TypeFind = 2, то будет искать текст по точному совпадению
  //Если TypeFind = 3, то будет искать текст по "смыслу", т.е. не учитывая
  Result := -1;
  if FFileName.IsEmpty or not (TypeFind in [1, 2, 3]) then
    Exit(-2);
  if not FileExists(FFileName) then
    Exit(-3);
  Size := FileSize(FFileName);
  if Size = 0 then
    Exit(-4);

  CheckDouble := False;

  case TypeFind of
    1: //Переведём число в массив байтов
      begin
        Value := StringToHex(Value);
        if Value = '' then
          Exit(-5);

        if Length(Value) mod 2 <> 0 then
          Value := '0' + Value;

        InputArrayLength := Length(Value) div 2;
        for i := 1 to InputArrayLength do
          InputArray[i] := StrToInt('$' + Copy(Value, i * 2 - 1, 2));
      end;
    2: //Переведём строку в массив байтов
      begin
        if Value = '' then
          Exit(-6);

        InputArrayLength := Length(Value);
        for i := 1 to InputArrayLength do
          InputArray[i] := Ord(Value[i]);
      end;
    3: //Переведём строку в массив байтов и дублируем в lower и upper case
      begin
        if Value = '' then
          Exit(-7);

        InputArrayLength := Length(Value);
        for i := 1 to InputArrayLength do
        begin
          InputArray[i] := Ord(AnsiUpperCase(Value[i])[1]);
          InputArrayAdd[i] := Ord(AnsiLowerCase(Value[i])[1]);
        end;
        CheckDouble := True;
      end;
  else
      Exit(-8);
  end;

  PosInFile := StartByte;
  FS := TFileStream.Create(FFileName, fmOpenRead, fmShareDenyRead);
  FS.Seek(StartByte, soBeginning);

  while FS.Position < Size do
  begin
    if (FS.Position - InputArrayLength > PosInFile) then
    begin
      StartByteToRead := FS.Position - InputArrayLength;
      FS.Seek(StartByteToRead, soBeginning);
    end;
    ReadSize := Min(Size - FS.Position, 8192);
    PosInFile := FS.Position;
    FS.Read(BufferArray, ReadSize);

    CurByte := 0;
    while (CurByte < ReadSize) and (Result < 0) do
    begin
      Inc(CurByte);
      if (BufferArray[CurByte] = InputArray[1]) or
         (CheckDouble and (BufferArray[CurByte] = InputArrayAdd[1]))
      then
      begin
        if InputArrayLength = 1 then
        begin
          Result := FS.Position - (ReadSize - CurByte) - 1;
          Break;
        end;
        for i := 2 to InputArrayLength do
        begin
          if (BufferArray[CurByte + i - 1] <> InputArray[i]) and
             (CheckDouble and (BufferArray[CurByte + i - 1] <> InputArrayAdd[i]))
          then Break;
          if i = InputArrayLength then
          begin
            Result := FS.Position - (ReadSize - CurByte) - 1;
            Break;
          end;
        end;
      end;
    end;
  end;
  FS.Free;
end;

end.
