unit HEXE.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, System.UITypes,
  Vcl.ComCtrls, HGM.Controls.SpinEdit, HGM.Popup, Vcl.Buttons, sSpeedButton,
  HGM.Button, System.ImageList, Vcl.ImgList, PngImageList;

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
    ButtonFlatMenuSearch: TButtonFlat;
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
    Shape1: TShape;
    Panel32: TPanel;
    TabSheetMenuSearch: TTabSheet;
    Shape23: TShape;
    PanelBarSerach: TPanel;
    Panel24: TPanel;
    Panel30: TPanel;
    TabSheetMenuHelp: TTabSheet;
    Shape24: TShape;
    PanelBarHelp: TPanel;
    SpeedButtonMenuInfo: TsSpeedButton;
    Shape20: TShape;
    Panel62: TPanel;
    Panel63: TPanel;
    SpeedButtonMenuFutures: TsSpeedButton;
    SpeedButtonMenuAutor: TsSpeedButton;
    PanelMenuFile: TPanel;
    Shape25: TShape;
    Shape26: TShape;
    Shape32: TShape;
    Panel65: TPanel;
    Shape21: TShape;
    Shape30: TShape;
    ButtonFlatOpen: TButtonFlat;
    ButtonFlatMenuQuit: TButtonFlat;
    Panel66: TPanel;
    Shape31: TShape;
    Panel69: TPanel;
    ListViewRecent: TListView;
    Panel67: TPanel;
    Shape22: TShape;
    Shape33: TShape;
    Shape35: TShape;
    Panel68: TPanel;
    Shape34: TShape;
    ButtonFlat17: TButtonFlat;
    ButtonFlatMenuView: TButtonFlat;
    TabSheetMenuView: TTabSheet;
    ImageList32: TImageList;
    EditSearch: TEdit;
    ButtonSearch: TButtonFlat;
    Shape3: TShape;
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
    ButtonFlatOpenFile: TButtonFlat;
    EditAddr: TEdit;
    ButtonFlatGoTo: TButtonFlat;
    Shape2: TShape;
    PanelBarView: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    SpinEditSize: TlkSpinEdit;
    ComboBoxCodePage: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Shape6: TShape;
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
    procedure MemoCharsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
    procedure ButtonFlat17Click(Sender: TObject);
    procedure ButtonFlatMenuStartClick(Sender: TObject);
    procedure ButtonFlatMenuViewClick(Sender: TObject);
    procedure ButtonFlatMenuSearchClick(Sender: TObject);
    procedure ButtonFlatMenuHelpClick(Sender: TObject);
    procedure ButtonFlatOpenFileClick(Sender: TObject);
    procedure ButtonFlatMenuQuitClick(Sender: TObject);
    procedure ButtonFlatGoToClick(Sender: TObject);
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
    procedure FreePopup;
    procedure LoadLastItems;
    procedure Navigate(Tab: TTabSheet);
    function GetHEXChar(Value: Byte): string;
    procedure FOpenFile(FileName: string);
    procedure UpdateParams;
    procedure UpdateView;
    procedure ScrollGrid(Scroll: TScrollCode);
    procedure UpdateMemoCursor;
    procedure RepaintGridOffset;
    function FindInFile(Value: string; StartByte: Int64; TypeFind: Byte): Int64;
    procedure GoToAddr(Addr: Int64);
    function GetStrNum(Value: Int64; Nums: Integer): string;
  public

  end;


var
  FormMain: TFormMain;


  function GetFileSizeEx(hFile: THandle; var FileSize: TLargeInteger): BOOL; stdcall; external kernel32 name 'GetFileSizeEx';

implementation

uses Math;

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

procedure TFormMain.LoadLastItems;
begin
  //
end;

procedure TFormMain.ButtonFlat17Click(Sender: TObject);
begin
  Winapi.Windows.SetFocus(Handle);
end;

procedure TFormMain.ButtonFlatGoToClick(Sender: TObject);
var Offset: Int64;
begin
  try
    Offset := StrToInt64('$'+EditAddr.Text);
  except
    begin
      MessageBox(Handle, 'Не верное значение!', 'Ошибка', MB_ICONWARNING or MB_OK);
      Exit;
    end;
  end;
  GoToAddr(Offset);
end;

procedure TFormMain.ButtonFlatMenuFileClick(Sender: TObject);
var
  pt: TPoint;
begin
  pt := ButtonFlatMenuFile.ClientToScreen(Point(0, 0));
  FMenuFilePopup := TFormPopup.CreatePopup(Self, PanelMenuFile, FreePopup, pt.X, pt.Y, False, True, False);
  LoadLastItems;
end;

procedure TFormMain.ButtonFlatMenuHelpClick(Sender: TObject);
begin
  Navigate(TabSheetMenuHelp);
end;

procedure TFormMain.ButtonFlatMenuQuitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormMain.ButtonFlatMenuSearchClick(Sender: TObject);
begin
  Navigate(TabSheetMenuSearch);
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

procedure TFormMain.ButtonSearchClick(Sender: TObject);
var Start: Integer;
    Kind: Byte;
    Addr: Int64;
begin
  if RadioButtonStartPos.Checked then Start := StartByte
  else Start := 0;
  if RadioButtonNum.Checked then Kind := 1
  else
  if RadioButtonStr.Checked then Kind := 2
  else
  if RadioButtonStrIgnor.Checked then Kind := 3;

  Addr := FindInFile(EditSearch.Text, Start, Kind);
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

procedure TFormMain.FOpenFile(FileName: string);
begin
  FFileName := FileName;
  FIsOpenFile := True;
  Caption := 'HEXE - ' + FileName;
  fSize := FileSize(FileName);
  StartByte := 0;
  UpdateParams;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  FIsOpenFile := False;
  FGoTo := False;
  FColCount := 24;
  FGoToByte := 0;
  FNumFormat := nfDEC;
  FCodePage := cpAnsi;
  StringGridEditor.ColWidths[0] := 80;
  StringGridEditor.RowHeights[0] := 30;
  Navigate(TabSheetMenuStart);
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
    nfOCT: ;
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

procedure TFormMain.MemoCharsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  MemoCharsClick(nil);
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
  SetMenuButtonActive(ButtonFlatMenuSearch, PageControlMenu.ActivePage = TabSheetMenuSearch);
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

  MaxBytesCount := MaxLineCount * FColCount;
  if fSize - StartByte >= MaxBytesCount then
    BytesCount := MaxBytesCount
  else
    BytesCount := fSize - StartByte;

  StringGridEditor.Perform(WM_SETREDRAW, 0, 0);
  MemoChars.Lines.BeginUpdate;
  MemoChars.Lines.Clear;
  Fs := TFileStream.Create(FFileName, fmOpenRead);
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
    StringGridEditor.Col := FGoToByte + 1;
  end;

  UpdateMemoCursor;
end;

procedure TFormMain.ScrollBarEditorScroll(Sender: TObject; ScrollCode: TScrollCode;
  var ScrollPos: Integer);
begin
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
  UpdateMemoCursor;
  StringGridEditor.Repaint;
end;

procedure TFormMain.ScrollGrid(Scroll: TScrollCode);
var ScrollPos: Integer;
begin
  ScrollPos := ScrollBarEditor.Position;
  ScrollBarEditorScroll(nil, Scroll, ScrollPos);
  ScrollBarEditor.Position := ScrollPos;
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
    VK_DOWN: if StringGridEditor.Row = StringGridEditor.RowCount-1 then ScrollGrid(scLineDown);
    VK_UP: if StringGridEditor.Row = 1 then ScrollGrid(scLineUp);
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

procedure TFormMain.UpdateMemoCursor;
begin
  if StringGridEditor.Col = 0 then Exit;
  if StringGridEditor.Row = 0 then Exit;
  MemoChars.SelStart := ((StringGridEditor.Row-1) * FColCount + (StringGridEditor.Row-1)) + StringGridEditor.Col - 1;
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

procedure TFormMain.StringGridEditorSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if StringGridEditor.Cells[ACol, ARow] = '' then
  begin
    CanSelect := False;
    Exit;
  end;

  if ACol = 0 then Exit;
  if ARow = 0 then Exit;
  MemoChars.SelStart := ((ARow-1) * FColCount + (ARow-1)) + ACol - 1;
  MemoChars.SelLength := 1;
  RepaintGridOffset;
end;

procedure TFormMain.StringGridEditorSetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: string);
var
  FS: TFileStream;
  B: Byte;
begin
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
  FS.Seek(StartByte + ((ARow-1) * FColCount + ACol-1), soBeginning);
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
