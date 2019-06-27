object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'HEXE'
  ClientHeight = 630
  ClientWidth = 1119
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1119
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Button1: TButton
      AlignWithMargins = True
      Left = 3
      Top = 9
      Width = 75
      Height = 23
      Margins.Top = 9
      Margins.Bottom = 9
      Align = alLeft
      Caption = 'Open'
      TabOrder = 0
      OnClick = Button1Click
    end
    object ComboBoxCodePage: TComboBox
      AlignWithMargins = True
      Left = 145
      Top = 10
      Width = 124
      Height = 21
      Margins.Top = 10
      Margins.Bottom = 8
      Align = alLeft
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 1
      Text = 'Windows (ANSI)'
      OnChange = ComboBoxCodePageChange
      Items.Strings = (
        'Unicode (UTF8)'
        'Windows (ANSI)'
        'DOS/IBM (OEM)'
        'Macintosh'
        'EBCDIC')
      ExplicitLeft = 165
    end
    object EditAddr: TEdit
      AlignWithMargins = True
      Left = 275
      Top = 10
      Width = 90
      Height = 21
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alLeft
      TabOrder = 2
      Text = '6FE59316B'
      ExplicitLeft = 295
    end
    object ButtonGoToAddr: TButton
      AlignWithMargins = True
      Left = 371
      Top = 9
      Width = 75
      Height = 23
      Margins.Top = 9
      Margins.Bottom = 9
      Align = alLeft
      Caption = 'GoTo Addr'
      TabOrder = 3
      OnClick = ButtonGoToAddrClick
      ExplicitLeft = 391
    end
    object EditSearch: TEdit
      AlignWithMargins = True
      Left = 452
      Top = 10
      Width = 90
      Height = 21
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alLeft
      TabOrder = 4
      TextHint = #1055#1086#1080#1089#1082'...'
      ExplicitLeft = 472
    end
    object ButtonSearch: TButton
      AlignWithMargins = True
      Left = 928
      Top = 9
      Width = 75
      Height = 23
      Margins.Top = 9
      Margins.Bottom = 9
      Align = alLeft
      Caption = 'Search'
      TabOrder = 5
      OnClick = ButtonSearchClick
      ExplicitLeft = 948
    end
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 548
      Top = 10
      Width = 218
      Height = 21
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alLeft
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 6
      ExplicitLeft = 568
      ExplicitTop = 9
      ExplicitHeight = 23
      object RadioButtonStrIgnor: TRadioButton
        AlignWithMargins = True
        Left = 58
        Top = 2
        Width = 56
        Height = 13
        Margins.Top = 2
        Margins.Bottom = 2
        Align = alLeft
        Caption = #1089#1090#1088#1086#1082#1072
        Checked = True
        TabOrder = 0
        TabStop = True
        ExplicitHeight = 15
      end
      object RadioButtonStr: TRadioButton
        AlignWithMargins = True
        Left = 120
        Top = 2
        Width = 96
        Height = 13
        Margins.Top = 2
        Margins.Bottom = 2
        Align = alLeft
        Caption = #1089#1090#1088#1086#1082#1072' ('#1090#1086#1095#1085'.)'
        TabOrder = 1
        ExplicitHeight = 15
      end
      object RadioButtonNum: TRadioButton
        AlignWithMargins = True
        Left = 3
        Top = 2
        Width = 49
        Height = 13
        Margins.Top = 2
        Margins.Bottom = 2
        Align = alLeft
        Caption = #1095#1080#1089#1083#1086
        TabOrder = 2
        ExplicitHeight = 15
      end
    end
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 772
      Top = 10
      Width = 150
      Height = 21
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alLeft
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 7
      ExplicitLeft = 792
      ExplicitTop = 9
      ExplicitHeight = 23
      object RadioButtonStartPos: TRadioButton
        AlignWithMargins = True
        Left = 71
        Top = 2
        Width = 72
        Height = 13
        Margins.Top = 2
        Margins.Bottom = 2
        Align = alLeft
        Caption = #1089' '#1090#1077#1082#1091#1097#1077#1081
        Checked = True
        TabOrder = 0
        TabStop = True
        ExplicitHeight = 15
      end
      object RadioButtonStartBegin: TRadioButton
        AlignWithMargins = True
        Left = 3
        Top = 2
        Width = 62
        Height = 13
        Margins.Top = 2
        Margins.Bottom = 2
        Align = alLeft
        Caption = #1089' '#1085#1072#1095#1072#1083#1072
        TabOrder = 1
        ExplicitHeight = 15
      end
    end
    object SpinEditSize: TlkSpinEdit
      AlignWithMargins = True
      Left = 84
      Top = 10
      Width = 55
      Height = 21
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alLeft
      MaxValue = 0
      MinValue = 0
      TabOrder = 8
      Value = 24
      OnChange = SpinEditSizeChange
      ExplicitLeft = 165
      ExplicitTop = 11
    end
  end
  object PanelEditor: TPanel
    Left = 0
    Top = 41
    Width = 1119
    Height = 589
    Align = alClient
    Caption = 'PanelEditor'
    TabOrder = 1
    ExplicitWidth = 1091
    object ScrollBoxMain: TScrollBox
      Left = 1
      Top = 1
      Width = 1099
      Height = 587
      HorzScrollBar.Smooth = True
      HorzScrollBar.Tracking = True
      VertScrollBar.Visible = False
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      ParentColor = False
      TabOrder = 0
      ExplicitWidth = 1071
      object StringGridEditor: TStringGrid
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 696
        Height = 582
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alLeft
        BorderStyle = bsNone
        ColCount = 17
        DefaultColWidth = 24
        DefaultRowHeight = 16
        DefaultDrawing = False
        DrawingStyle = gdsGradient
        FixedColor = clDefault
        RowCount = 30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        GradientEndColor = clWhite
        GridLineWidth = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goEditing, goFixedColClick]
        ParentFont = False
        ScrollBars = ssNone
        TabOrder = 0
        OnDrawCell = StringGridEditorDrawCell
        OnFixedCellClick = StringGridEditorFixedCellClick
        OnKeyDown = StringGridEditorKeyDown
        OnMouseWheelDown = StringGridEditorMouseWheelDown
        OnMouseWheelUp = StringGridEditorMouseWheelUp
        OnSelectCell = StringGridEditorSelectCell
        OnSetEditText = StringGridEditorSetEditText
        ColWidths = (
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24)
        RowHeights = (
          16
          16
          16
          16
          16
          16
          16
          16
          16
          16
          16
          16
          16
          16
          16
          16
          16
          16
          16
          16
          16
          16
          16
          16
          16
          16
          16
          16
          16
          16)
      end
      object MemoChars: TRichEdit
        AlignWithMargins = True
        Left = 696
        Top = 30
        Width = 289
        Height = 557
        Margins.Left = 0
        Margins.Top = 30
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        BorderStyle = bsNone
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Style = []
        HideSelection = False
        ParentFont = False
        PlainText = True
        ReadOnly = True
        TabOrder = 1
        WantReturns = False
        WordWrap = False
        Zoom = 100
        OnClick = MemoCharsClick
        OnKeyDown = MemoCharsKeyDown
        OnKeyUp = MemoCharsKeyUp
        OnMouseWheelDown = MemoCharsMouseWheelDown
        OnMouseWheelUp = MemoCharsMouseWheelUp
      end
    end
    object ScrollBarEditor: TScrollBar
      Left = 1100
      Top = 1
      Width = 18
      Height = 587
      Align = alRight
      Kind = sbVertical
      PageSize = 0
      Position = 100
      TabOrder = 1
      OnScroll = ScrollBarEditorScroll
      ExplicitLeft = 1072
    end
  end
  object FileOpenDialog: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 481
    Top = 210
  end
end
