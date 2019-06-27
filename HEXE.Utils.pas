unit HEXE.Utils;

interface

uses
  SysUtils, StrUtils;

type
  TText = array of string;

procedure ExChange(var C1, C2: Char);
procedure TurnOver(var S: string);
function RCopy(Source: string; Index, Count: Integer): string;
procedure RCopyDef(Source: string; var Dest: string; Count, Index: Integer; DefaultChar: Char = '0');
procedure DivideText(Source: string; var Text: TText; Len: Integer);

function Bin(X: Word): Integer;
function BinToOther(S: string): Byte;
function OneHexToBin(C: Char): string;
function OneOctToBin(C: Char): string;
function Order(C: Char): Integer;


function BinToOct(S: string): string;
function BinToHex(S: string): string;
function BinToDec(S: string): Int64;

function HexToBin(S: string): string;
function HexToOct(S: string): string;
function HexToDec(S: string): Int64;

function OctToBin(S: string): string;
function OctToHex(S: string): string;
function OctToDec(S: string): Int64;

function DecToBin(S: Int64): string;
function DecToHex(S: Int64): string;
function DecToOct(S: Int64): string;


implementation

const
  H: array[0..15] of Char = ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F');

function Bin(X: Word): Integer;
var
  I: Integer;
begin
  Result := 0;
  for I := 0 to X do
  begin
    Result := Result + Result;
    if I = 1 then
      Result := 1;
  end;
end;

function OneOctToBin(C: Char): string;
var
  V, I: Integer;
begin
  V := Order(C);
  Result := '';
  for I := 3 downto 1 do
    if V >= Bin(I) then
    begin
      Result := Result + '1';
      Dec(V, Bin(I));
    end
    else
      Result := Result + '0';
end;

function BinToOther(S: string): Byte;
var
  I: BYTE;
begin
  Result := 0;
  for I := Length(S) downto 1 do
    if S[I] = '1' then
      Result := Result + Bin(Length(S) + 1 - I);
end;

function Order(C: Char): Integer;
begin
  for Result := Low(H) to High(H) do
    if C = H[Result] then Exit;
  Result := -1;
end;

function OneHexToBin(C: Char): string;
var
  V, I: Integer;
begin
  V := Order(C);
  Result := '';
  for I := 4 downto 1 do
    if V >= Bin(I) then
    begin
      Result := Result + '1';
      Dec(V, Bin(I));
    end
    else
      Result := Result + '0';
end;

procedure ExChange(var C1, C2: Char);
var
  C3: Char;
begin
  C3 := C1;
  C1 := C2;
  C2 := C3;
end;

procedure TurnOver(var S: string);
var
  I: Integer;
begin
  for I := 1 to Length(S) div 2 do
    ExChange(S[I], S[Length(S) - I + 1]);
end;

function RCopy(Source: string; Index, Count: Integer): string;
begin
  TurnOver(Source);
  Result := Copy(Source, Index, Count);
  TurnOver(Result);
end;

procedure RCopyDef(Source: string; var Dest: string; Count, Index: Integer; DefaultChar: Char = '0');
begin
  Dest := RCopy(Source, Index, Count);
  Dest := StringOfChar(DefaultChar, Count - Length(Dest)) + Dest;
end;

procedure DivideText(Source: string; var Text: TText; Len: Integer);
var
  Index: Integer;
begin
  SetLength(Text, 0);
  Index := 1;

  while Index <= Length(Source) do
  begin
    SetLength(Text, Length(Text) + 1);
    RCopyDef(Source, Text[High(Text)], Len, Index);
    Inc(Index, Len);
  end;
end;

//

function BinToDec(S: string): Int64;
begin
  Result := StrToInt64('$'+BinToHex(S));
end;

function HexToDec(S: string): Int64;
begin
  Result := StrToInt64('$'+S);
end;

function OctToDec(S: string): Int64;
begin
  Result := StrToInt64('$'+OctToHex(S));
end;

function DecToBin(S: Int64): string;
begin
  Result := HexToBin(IntToHex(S, 2));
end;

function DecToHex(S: Int64): string;
begin
  Result := IntToHex(S, 2);
end;

function DecToOct(S: Int64): string;
begin
  Result := HexToOct(IntToHex(S, 1));
end;

function BinToOct(S: string): string;
var
  Text: TText;
  I: Integer;
begin
  Result := '';
  DivideText(S, Text, 3);
  for I := Low(Text) to High(Text) do
    Result := Result + IntToStr(BinToOther(Text[I]));

  TurnOver(Result);
end;

function BinToHex(S: string): string;
var
  Text: TText;
  I: Integer;
begin
  Result := '';
  DivideText(S, Text, 4);
  for I := Low(Text) to High(Text) do
    Result := Result + H[BinToOther(Text[I])];

  TurnOver(Result);
end;

function HexToBin(S: string): string;
var
  I: Integer;
begin
  Result := '';
  for I := 1 to Length(S) do
    Result := Result + OneHexToBin(S[I]);

  for I := 1 to Length(Result) do
    if Result[I] = '1' then
    begin
      Delete(Result, 1, I - 1);
      Break;
    end;
end;

function OctToBin(S: string): string;
var
  I: Integer;
begin
  Result := '';
  for I := 1 to Length(S) do
    Result := Result + OneOctToBin(S[I]);

  for I := 1 to Length(Result) do
    if Result[I] = '1' then
    begin
      Delete(Result, 1, I - 1);
      Break;
    end;
end;

function HexToOct(S: string): string;
begin
  Result := BinToOct(HexToBin(S));
end;

function OctToHex(S: string): string;
begin
  Result := BinToHex(OctToBin(S));
end;

end.

