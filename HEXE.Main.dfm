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
  object PanelEditor: TPanel
    Left = 0
    Top = 120
    Width = 1119
    Height = 510
    Align = alClient
    Caption = 'PanelEditor'
    TabOrder = 0
    ExplicitTop = 161
    ExplicitHeight = 469
    object ScrollBoxMain: TScrollBox
      Left = 1
      Top = 1
      Width = 1099
      Height = 508
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
      ExplicitHeight = 467
      object StringGridEditor: TStringGrid
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 696
        Height = 503
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
        ExplicitHeight = 462
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
        Height = 478
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
        ExplicitHeight = 437
      end
    end
    object ScrollBarEditor: TScrollBar
      Left = 1100
      Top = 1
      Width = 18
      Height = 508
      Align = alRight
      Kind = sbVertical
      PageSize = 0
      Position = 100
      TabOrder = 1
      OnScroll = ScrollBarEditorScroll
      ExplicitHeight = 467
    end
  end
  object PanelMenu: TPanel
    Left = 0
    Top = 0
    Width = 1119
    Height = 120
    Align = alTop
    BevelOuter = bvNone
    Color = 16250613
    ParentBackground = False
    TabOrder = 1
    object PanelMenuNavigate: TPanel
      Left = 0
      Top = 0
      Width = 1119
      Height = 23
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object ButtonFlatMenuSearch: TButtonFlat
        Left = 217
        Top = 0
        Width = 80
        Height = 23
        Align = alLeft
        Caption = #1055#1086#1080#1089#1082
        ColorNormal = clWhite
        ColorOver = 16250613
        ColorPressed = 15921390
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = clWindowText
        FontOver.Height = -13
        FontOver.Name = 'Tahoma'
        FontOver.Style = []
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = clWindowText
        FontDown.Height = -13
        FontDown.Name = 'Tahoma'
        FontDown.Style = []
        IgnorBounds = True
        ImageIndentLeft = 0
        OnClick = ButtonFlatMenuSearchClick
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 0
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
        SubTextFont.Charset = DEFAULT_CHARSET
        SubTextFont.Color = clWhite
        SubTextFont.Height = -13
        SubTextFont.Name = 'Tahoma'
        SubTextFont.Style = []
      end
      object ButtonFlatMenuHelp: TButtonFlat
        Left = 297
        Top = 0
        Width = 80
        Height = 23
        Align = alLeft
        Caption = #1057#1087#1088#1072#1074#1082#1072
        ColorNormal = clWhite
        ColorOver = 16250613
        ColorPressed = 15921390
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = clWindowText
        FontOver.Height = -13
        FontOver.Name = 'Tahoma'
        FontOver.Style = []
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = clWindowText
        FontDown.Height = -13
        FontDown.Name = 'Tahoma'
        FontDown.Style = []
        IgnorBounds = True
        ImageIndentLeft = 0
        OnClick = ButtonFlatMenuHelpClick
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 1
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
        SubTextFont.Charset = DEFAULT_CHARSET
        SubTextFont.Color = clWhite
        SubTextFont.Height = -13
        SubTextFont.Name = 'Tahoma'
        SubTextFont.Style = []
      end
      object ButtonFlatMenuStart: TButtonFlat
        Left = 57
        Top = 0
        Width = 80
        Height = 23
        Align = alLeft
        Caption = #1053#1072#1095#1072#1090#1100
        ColorNormal = 16250613
        ColorOver = 16250613
        ColorPressed = 15921390
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = clWindowText
        FontOver.Height = -13
        FontOver.Name = 'Tahoma'
        FontOver.Style = []
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = clWindowText
        FontDown.Height = -13
        FontDown.Name = 'Tahoma'
        FontDown.Style = []
        IgnorBounds = True
        ImageIndentLeft = 0
        OnClick = ButtonFlatMenuStartClick
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 2
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
        SubTextFont.Charset = DEFAULT_CHARSET
        SubTextFont.Color = clWhite
        SubTextFont.Height = -13
        SubTextFont.Name = 'Tahoma'
        SubTextFont.Style = []
      end
      object ButtonFlatMenuFile: TButtonFlat
        Left = 0
        Top = 0
        Width = 57
        Height = 23
        Align = alLeft
        Caption = #1060#1072#1081#1083
        ColorNormal = 13269273
        ColorOver = 14781481
        ColorPressed = 11757586
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = clWhite
        FontOver.Height = -13
        FontOver.Name = 'Tahoma'
        FontOver.Style = []
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = clWhite
        FontDown.Height = -13
        FontDown.Name = 'Tahoma'
        FontDown.Style = []
        IgnorBounds = True
        ImageIndentLeft = 0
        OnClick = ButtonFlatMenuFileClick
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 3
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
        SubTextFont.Charset = DEFAULT_CHARSET
        SubTextFont.Color = clWhite
        SubTextFont.Height = -13
        SubTextFont.Name = 'Tahoma'
        SubTextFont.Style = []
      end
      object ButtonFlatMenuView: TButtonFlat
        Left = 137
        Top = 0
        Width = 80
        Height = 23
        Align = alLeft
        Caption = #1042#1080#1076
        ColorNormal = clWhite
        ColorOver = 16250613
        ColorPressed = 15921390
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = clWindowText
        FontOver.Height = -13
        FontOver.Name = 'Tahoma'
        FontOver.Style = []
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = clWindowText
        FontDown.Height = -13
        FontDown.Name = 'Tahoma'
        FontDown.Style = []
        IgnorBounds = True
        ImageIndentLeft = 0
        OnClick = ButtonFlatMenuViewClick
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 4
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
        SubTextFont.Charset = DEFAULT_CHARSET
        SubTextFont.Color = clWhite
        SubTextFont.Height = -13
        SubTextFont.Name = 'Tahoma'
        SubTextFont.Style = []
      end
    end
    object PanelMenuPages: TPanel
      Left = 0
      Top = 23
      Width = 1119
      Height = 97
      Align = alClient
      BevelOuter = bvNone
      Color = 16250613
      ParentBackground = False
      TabOrder = 1
      object Shape4: TShape
        Left = 0
        Top = 96
        Width = 1119
        Height = 1
        Align = alBottom
        Brush.Color = 14474202
        Pen.Color = 14474202
        ExplicitTop = 115
        ExplicitWidth = 1097
      end
      object Shape11: TShape
        Left = 0
        Top = 0
        Width = 1119
        Height = 1
        Align = alTop
        Brush.Color = 14474202
        Pen.Color = 14474202
        ExplicitTop = 115
        ExplicitWidth = 1097
      end
      object PageControlMenu: TPageControl
        Left = 0
        Top = 1
        Width = 1119
        Height = 95
        ActivePage = TabSheetMenuSearch
        Align = alClient
        Style = tsFlatButtons
        TabOrder = 0
        object TabSheetMenuStart: TTabSheet
          Caption = #1053#1072#1095#1072#1090#1100
          TabVisible = False
          object Shape5: TShape
            AlignWithMargins = True
            Left = 453
            Top = 0
            Width = 1
            Height = 85
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alLeft
            Brush.Color = 15000546
            Pen.Color = 15000546
            ExplicitLeft = 215
            ExplicitTop = -2
            ExplicitHeight = 98
          end
          object PanelBarTasks: TPanel
            Left = 0
            Top = 0
            Width = 448
            Height = 85
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Shape1: TShape
              AlignWithMargins = True
              Left = 135
              Top = 0
              Width = 1
              Height = 72
              Margins.Left = 5
              Margins.Top = 0
              Margins.Right = 5
              Margins.Bottom = 0
              Align = alLeft
              Brush.Color = 15000546
              Pen.Color = 15000546
              ExplicitLeft = 58
              ExplicitTop = 3
              ExplicitHeight = 67
            end
            object Panel32: TPanel
              Left = 0
              Top = 72
              Width = 448
              Height = 13
              Align = alBottom
              BevelOuter = bvNone
              Caption = #1047#1072#1076#1072#1095#1080
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Pitch = fpFixed
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object ButtonFlatOpenFile: TButtonFlat
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 124
              Height = 66
              Align = alLeft
              Caption = #1054#1090#1082#1088#1099#1090#1100'...'
              ColorNormal = 16250613
              ColorOver = 16577773
              ColorPressed = 16444898
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              BorderColor = 15263459
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = clWindowText
              FontOver.Height = -13
              FontOver.Name = 'Tahoma'
              FontOver.Style = []
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = clWindowText
              FontDown.Height = -13
              FontDown.Name = 'Tahoma'
              FontDown.Style = []
              IgnorBounds = True
              ImageIndentLeft = 6
              ImageIndentRight = 6
              ImageIndex = 0
              Images = ImageList32
              OnClick = ButtonFlatOpenFileClick
              RoundRectParam = 0
              ShowFocusRect = False
              TabOrder = 1
              TabStop = True
              TextFormat = [tfSingleLine, tfVerticalCenter]
              SubTextFont.Charset = DEFAULT_CHARSET
              SubTextFont.Color = clWhite
              SubTextFont.Height = -13
              SubTextFont.Name = 'Tahoma'
              SubTextFont.Style = []
              ExplicitLeft = -19
              ExplicitTop = 0
            end
            object EditAddr: TEdit
              AlignWithMargins = True
              Left = 144
              Top = 20
              Width = 201
              Height = 32
              Margins.Top = 20
              Margins.Bottom = 20
              Align = alLeft
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BevelWidth = 3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Text = '6FE59316B'
            end
            object ButtonFlatGoTo: TButtonFlat
              AlignWithMargins = True
              Left = 351
              Top = 20
              Width = 94
              Height = 32
              Cursor = crDefault
              Margins.Top = 20
              Margins.Bottom = 20
              Align = alLeft
              Caption = #1055#1077#1088#1077#1081#1090#1080
              ColorNormal = 16645371
              ColorOver = 16577773
              ColorPressed = 16444898
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              Flat = False
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = clWindowText
              FontOver.Height = -13
              FontOver.Name = 'Tahoma'
              FontOver.Style = []
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = clWindowText
              FontDown.Height = -13
              FontDown.Name = 'Tahoma'
              FontDown.Style = []
              IgnorBounds = True
              OnClick = ButtonFlatGoToClick
              RoundRectParam = 0
              ShowFocusRect = False
              TabOrder = 3
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
              SubTextFont.Charset = DEFAULT_CHARSET
              SubTextFont.Color = clWhite
              SubTextFont.Height = -13
              SubTextFont.Name = 'Tahoma'
              SubTextFont.Style = []
              ExplicitLeft = 299
            end
          end
        end
        object TabSheetMenuSearch: TTabSheet
          Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
          ImageIndex = 4
          TabVisible = False
          object Shape23: TShape
            AlignWithMargins = True
            Left = 574
            Top = 0
            Width = 1
            Height = 85
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alLeft
            Brush.Color = 15000546
            Pen.Color = 15000546
            ExplicitLeft = 649
            ExplicitTop = 2
          end
          object Shape3: TShape
            AlignWithMargins = True
            Left = 334
            Top = 0
            Width = 1
            Height = 85
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alLeft
            Brush.Color = 15000546
            Pen.Color = 15000546
            ExplicitLeft = 349
            ExplicitHeight = 83
          end
          object PanelBarSerach: TPanel
            Left = 0
            Top = 0
            Width = 329
            Height = 85
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Panel24: TPanel
              Left = 0
              Top = 72
              Width = 329
              Height = 13
              Align = alBottom
              BevelOuter = bvNone
              Caption = #1055#1086#1080#1089#1082
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Pitch = fpFixed
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object Panel30: TPanel
              Left = 0
              Top = 0
              Width = 329
              Height = 72
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object EditSearch: TEdit
                AlignWithMargins = True
                Left = 10
                Top = 20
                Width = 230
                Height = 32
                Margins.Left = 10
                Margins.Top = 20
                Margins.Bottom = 20
                Align = alLeft
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                TextHint = #1055#1086#1080#1089#1082'...'
                ExplicitHeight = 27
              end
              object ButtonSearch: TButtonFlat
                AlignWithMargins = True
                Left = 246
                Top = 20
                Width = 75
                Height = 32
                Cursor = crDefault
                Margins.Top = 20
                Margins.Bottom = 20
                Align = alLeft
                Caption = #1055#1086#1080#1089#1082
                ColorNormal = 16645371
                ColorOver = 16577773
                ColorPressed = 16444898
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                Flat = False
                FontOver.Charset = DEFAULT_CHARSET
                FontOver.Color = clWindowText
                FontOver.Height = -13
                FontOver.Name = 'Tahoma'
                FontOver.Style = []
                FontDown.Charset = DEFAULT_CHARSET
                FontDown.Color = clWindowText
                FontDown.Height = -13
                FontDown.Name = 'Tahoma'
                FontDown.Style = []
                IgnorBounds = True
                OnClick = ButtonSearchClick
                RoundRectParam = 0
                ShowFocusRect = False
                TabOrder = 1
                TabStop = True
                TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
                SubTextFont.Charset = DEFAULT_CHARSET
                SubTextFont.Color = clWhite
                SubTextFont.Height = -13
                SubTextFont.Name = 'Tahoma'
                SubTextFont.Style = []
                ExplicitTop = 24
                ExplicitHeight = 24
              end
            end
          end
          object PanelBarSearchParam: TPanel
            Left = 340
            Top = 0
            Width = 229
            Height = 85
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Panel5: TPanel
              Left = 0
              Top = 72
              Width = 229
              Height = 13
              Align = alBottom
              BevelOuter = bvNone
              Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1087#1086#1080#1089#1082#1072
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Pitch = fpFixed
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object Panel6: TPanel
              Left = 0
              Top = 0
              Width = 229
              Height = 72
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Panel3: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 10
                Width = 223
                Height = 25
                Margins.Top = 10
                Align = alTop
                BevelKind = bkFlat
                BevelOuter = bvNone
                TabOrder = 0
                object RadioButtonStrIgnor: TRadioButton
                  AlignWithMargins = True
                  Left = 58
                  Top = 2
                  Width = 56
                  Height = 17
                  Margins.Top = 2
                  Margins.Bottom = 2
                  Align = alLeft
                  Caption = #1089#1090#1088#1086#1082#1072
                  Checked = True
                  TabOrder = 0
                  TabStop = True
                end
                object RadioButtonStr: TRadioButton
                  AlignWithMargins = True
                  Left = 120
                  Top = 2
                  Width = 96
                  Height = 17
                  Margins.Top = 2
                  Margins.Bottom = 2
                  Align = alLeft
                  Caption = #1089#1090#1088#1086#1082#1072' ('#1090#1086#1095#1085'.)'
                  TabOrder = 1
                end
                object RadioButtonNum: TRadioButton
                  AlignWithMargins = True
                  Left = 3
                  Top = 2
                  Width = 49
                  Height = 17
                  Margins.Top = 2
                  Margins.Bottom = 2
                  Align = alLeft
                  Caption = #1095#1080#1089#1083#1086
                  TabOrder = 2
                end
              end
              object Panel4: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 41
                Width = 223
                Height = 25
                Margins.Bottom = 10
                Align = alTop
                BevelKind = bkFlat
                BevelOuter = bvNone
                TabOrder = 1
                object RadioButtonStartPos: TRadioButton
                  AlignWithMargins = True
                  Left = 71
                  Top = 2
                  Width = 72
                  Height = 17
                  Margins.Top = 2
                  Margins.Bottom = 2
                  Align = alLeft
                  Caption = #1089' '#1090#1077#1082#1091#1097#1077#1081
                  Checked = True
                  TabOrder = 0
                  TabStop = True
                end
                object RadioButtonStartBegin: TRadioButton
                  AlignWithMargins = True
                  Left = 3
                  Top = 2
                  Width = 62
                  Height = 17
                  Margins.Top = 2
                  Margins.Bottom = 2
                  Align = alLeft
                  Caption = #1089' '#1085#1072#1095#1072#1083#1072
                  TabOrder = 1
                end
              end
            end
          end
        end
        object TabSheetMenuHelp: TTabSheet
          Caption = #1057#1087#1088#1072#1074#1082#1072
          ImageIndex = 5
          TabVisible = False
          object Shape24: TShape
            AlignWithMargins = True
            Left = 182
            Top = 0
            Width = 1
            Height = 85
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alLeft
            Brush.Color = 15000546
            Pen.Color = 15000546
            ExplicitLeft = 349
            ExplicitHeight = 83
          end
          object PanelBarHelp: TPanel
            Left = 0
            Top = 0
            Width = 177
            Height = 85
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object SpeedButtonMenuInfo: TsSpeedButton
              Left = 0
              Top = 0
              Width = 72
              Height = 72
              Align = alLeft
              Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
              Flat = True
              Layout = blGlyphTop
              ImageIndex = 8
              ExplicitHeight = 70
            end
            object Shape20: TShape
              AlignWithMargins = True
              Left = 77
              Top = 0
              Width = 1
              Height = 72
              Margins.Left = 5
              Margins.Top = 0
              Margins.Right = 5
              Margins.Bottom = 0
              Align = alLeft
              Brush.Color = 15000546
              Pen.Color = 15000546
              ExplicitLeft = 69
              ExplicitHeight = 70
            end
            object Panel62: TPanel
              Left = 0
              Top = 72
              Width = 177
              Height = 13
              Align = alBottom
              BevelOuter = bvNone
              Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Pitch = fpFixed
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object Panel63: TPanel
              Left = 83
              Top = 0
              Width = 94
              Height = 72
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object SpeedButtonMenuFutures: TsSpeedButton
                AlignWithMargins = True
                Left = 3
                Top = 23
                Width = 88
                Height = 23
                Margins.Top = 0
                Margins.Bottom = 0
                Align = alTop
                Caption = #1042#1086#1079#1084#1086#1078#1085#1086#1089#1090#1080
                Flat = True
                Margin = 2
                Alignment = taLeftJustify
                TextAlignment = taLeftJustify
                ExplicitLeft = 0
                ExplicitTop = -10
                ExplicitWidth = 166
              end
              object SpeedButtonMenuAutor: TsSpeedButton
                AlignWithMargins = True
                Left = 3
                Top = 0
                Width = 88
                Height = 23
                Margins.Top = 0
                Margins.Bottom = 0
                Align = alTop
                Caption = #1056#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082
                Flat = True
                Margin = 2
                Alignment = taLeftJustify
                TextAlignment = taLeftJustify
                ExplicitLeft = 5
                ExplicitTop = -9
                ExplicitWidth = 269
              end
            end
          end
        end
        object TabSheetMenuView: TTabSheet
          Caption = #1042#1080#1076
          ImageIndex = 3
          TabVisible = False
          object Shape2: TShape
            AlignWithMargins = True
            Left = 478
            Top = 0
            Width = 1
            Height = 85
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alLeft
            Brush.Color = 15000546
            Pen.Color = 15000546
            ExplicitLeft = 349
            ExplicitHeight = 83
          end
          object PanelBarView: TPanel
            Left = 0
            Top = 0
            Width = 473
            Height = 85
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Panel7: TPanel
              Left = 0
              Top = 72
              Width = 473
              Height = 13
              Align = alBottom
              BevelOuter = bvNone
              Caption = #1042#1080#1076
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Pitch = fpFixed
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ExplicitWidth = 177
            end
            object Panel8: TPanel
              Left = 0
              Top = 0
              Width = 473
              Height = 72
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              ExplicitLeft = -3
              ExplicitWidth = 513
              object Label1: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 20
                Width = 40
                Height = 32
                Margins.Top = 20
                Margins.Bottom = 20
                Align = alLeft
                Caption = #1064#1080#1088#1080#1085#1072
                Layout = tlCenter
                ExplicitTop = 3
                ExplicitHeight = 13
              end
              object Label2: TLabel
                AlignWithMargins = True
                Left = 150
                Top = 20
                Width = 94
                Height = 32
                Margins.Top = 20
                Margins.Bottom = 20
                Align = alLeft
                Caption = #1050#1086#1076#1080#1088#1086#1074#1082#1072' '#1090#1077#1082#1089#1090#1072
                Layout = tlCenter
                ExplicitLeft = 139
                ExplicitHeight = 13
              end
              object Shape6: TShape
                AlignWithMargins = True
                Left = 141
                Top = 0
                Width = 1
                Height = 72
                Margins.Left = 5
                Margins.Top = 0
                Margins.Right = 5
                Margins.Bottom = 0
                Align = alLeft
                Brush.Color = 15000546
                Pen.Color = 15000546
                ExplicitTop = 14
              end
              object SpinEditSize: TlkSpinEdit
                AlignWithMargins = True
                Left = 49
                Top = 20
                Width = 84
                Height = 32
                Margins.Top = 20
                Margins.Bottom = 20
                Align = alLeft
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxValue = 0
                MinValue = 0
                ParentFont = False
                TabOrder = 0
                Value = 24
                OnChange = SpinEditSizeChange
              end
              object ComboBoxCodePage: TComboBox
                AlignWithMargins = True
                Left = 250
                Top = 20
                Width = 215
                Height = 27
                Margins.Top = 20
                Margins.Bottom = 20
                Align = alLeft
                Style = csDropDownList
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemIndex = 1
                ParentFont = False
                TabOrder = 1
                Text = 'Windows (ANSI)'
                OnChange = ComboBoxCodePageChange
                Items.Strings = (
                  'Unicode (UTF8)'
                  'Windows (ANSI)'
                  'DOS/IBM (OEM)'
                  'Macintosh'
                  'EBCDIC')
                ExplicitLeft = 239
              end
            end
          end
        end
      end
    end
  end
  object PanelMenuFile: TPanel
    Left = 600
    Top = 134
    Width = 486
    Height = 480
    Align = alCustom
    BevelOuter = bvNone
    Color = 16645371
    ParentBackground = False
    TabOrder = 2
    Visible = False
    object Shape25: TShape
      Left = 0
      Top = 23
      Width = 486
      Height = 1
      Margins.Left = 20
      Align = alTop
      Brush.Color = 14474202
      Pen.Color = 14474202
      ExplicitTop = 8
      ExplicitWidth = 482
    end
    object Shape26: TShape
      Left = 185
      Top = 24
      Width = 1
      Height = 434
      Margins.Left = 20
      Align = alLeft
      Brush.Color = 14474202
      Pen.Color = 14474202
      ExplicitLeft = 264
      ExplicitTop = 20
      ExplicitHeight = 470
    end
    object Shape32: TShape
      Left = 485
      Top = 24
      Width = 1
      Height = 434
      Margins.Left = 20
      Align = alRight
      Brush.Color = 14474202
      Pen.Color = 14474202
      ExplicitLeft = 489
      ExplicitTop = 31
      ExplicitHeight = 432
    end
    object Panel65: TPanel
      Left = 0
      Top = 24
      Width = 185
      Height = 434
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Shape21: TShape
        AlignWithMargins = True
        Left = 20
        Top = 43
        Width = 165
        Height = 1
        Margins.Left = 20
        Margins.Right = 0
        Align = alTop
        Brush.Color = 14474202
        Pen.Color = 14474202
        ExplicitLeft = 0
        ExplicitTop = 8
        ExplicitWidth = 185
      end
      object Shape30: TShape
        AlignWithMargins = True
        Left = 20
        Top = 390
        Width = 165
        Height = 1
        Margins.Left = 20
        Margins.Right = 0
        Align = alBottom
        Brush.Color = 14474202
        Pen.Color = 14474202
        ExplicitLeft = 28
        ExplicitTop = 394
      end
      object ButtonFlatOpen: TButtonFlat
        Left = 0
        Top = 0
        Width = 185
        Height = 40
        Align = alTop
        Caption = #1054#1090#1082#1088#1099#1090#1100
        ColorNormal = 16645371
        ColorOver = 16577773
        ColorPressed = 16444898
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = clWindowText
        FontOver.Height = -13
        FontOver.Name = 'Tahoma'
        FontOver.Style = []
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = clWindowText
        FontDown.Height = -13
        FontDown.Name = 'Tahoma'
        FontDown.Style = []
        IgnorBounds = True
        ImageIndentLeft = 5
        ImageIndentRight = 5
        ImageIndex = 21
        OnClick = ButtonFlatOpenFileClick
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 0
        TabStop = True
        TextFormat = [tfSingleLine, tfVerticalCenter]
        SubTextFont.Charset = DEFAULT_CHARSET
        SubTextFont.Color = clWhite
        SubTextFont.Height = -13
        SubTextFont.Name = 'Tahoma'
        SubTextFont.Style = []
      end
      object ButtonFlatMenuQuit: TButtonFlat
        Left = 0
        Top = 394
        Width = 185
        Height = 40
        Align = alBottom
        Caption = #1047#1072#1082#1088#1099#1090#1100' '#1087#1088#1086#1075#1088#1072#1084#1084#1091
        ColorNormal = 16645371
        ColorOver = 16577773
        ColorPressed = 16444898
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = clWindowText
        FontOver.Height = -13
        FontOver.Name = 'Tahoma'
        FontOver.Style = []
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = clWindowText
        FontDown.Height = -13
        FontDown.Name = 'Tahoma'
        FontDown.Style = []
        IgnorBounds = True
        ImageIndentLeft = 5
        ImageIndentRight = 5
        ImageIndex = 10
        OnClick = ButtonFlatMenuQuitClick
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 1
        TabStop = True
        TextFormat = [tfSingleLine, tfVerticalCenter]
        SubTextFont.Charset = DEFAULT_CHARSET
        SubTextFont.Color = clWhite
        SubTextFont.Height = -13
        SubTextFont.Name = 'Tahoma'
        SubTextFont.Style = []
      end
    end
    object Panel66: TPanel
      Left = 186
      Top = 24
      Width = 299
      Height = 434
      Align = alClient
      BevelOuter = bvNone
      Color = 16316406
      ParentBackground = False
      TabOrder = 1
      object Shape31: TShape
        Left = 0
        Top = 22
        Width = 299
        Height = 1
        Margins.Left = 20
        Align = alTop
        Brush.Color = 14474202
        Pen.Color = 14474202
        ExplicitTop = 8
        ExplicitWidth = 482
      end
      object Panel69: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 1
        Width = 293
        Height = 21
        Margins.Top = 1
        Margins.Bottom = 0
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1077' '#1092#1072#1081#1083#1099
        TabOrder = 0
      end
      object ListViewRecent: TListView
        Left = 0
        Top = 23
        Width = 299
        Height = 411
        Align = alClient
        BorderStyle = bsNone
        Color = 16316406
        Columns = <
          item
            Caption = #1069#1083#1077#1084#1077#1085#1090
            Width = 260
          end>
        HideSelection = False
        HotTrack = True
        ReadOnly = True
        RowSelect = True
        ShowColumnHeaders = False
        TabOrder = 1
        ViewStyle = vsReport
      end
    end
    object Panel67: TPanel
      Left = 0
      Top = 458
      Width = 486
      Height = 22
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object Shape22: TShape
        Left = 0
        Top = 0
        Width = 486
        Height = 1
        Margins.Left = 20
        Align = alTop
        Brush.Color = 14474202
        Pen.Color = 14474202
        ExplicitTop = 8
        ExplicitWidth = 185
      end
      object Shape33: TShape
        Left = 0
        Top = 21
        Width = 486
        Height = 1
        Margins.Left = 20
        Align = alBottom
        Brush.Color = 14474202
        Pen.Color = 14474202
        ExplicitTop = 8
      end
      object Shape35: TShape
        Left = 485
        Top = 1
        Width = 1
        Height = 20
        Margins.Left = 20
        Align = alRight
        Brush.Color = 14474202
        Pen.Color = 14474202
        ExplicitLeft = 489
        ExplicitTop = 31
        ExplicitHeight = 432
      end
    end
    object Panel68: TPanel
      Left = 0
      Top = 0
      Width = 486
      Height = 23
      Align = alTop
      BevelOuter = bvNone
      Color = 16316406
      ParentBackground = False
      TabOrder = 3
      object Shape34: TShape
        Left = 485
        Top = 0
        Width = 1
        Height = 23
        Margins.Left = 20
        Align = alRight
        Brush.Color = 14474202
        Pen.Color = 14474202
        ExplicitLeft = 489
        ExplicitTop = 31
        ExplicitHeight = 432
      end
      object ButtonFlat17: TButtonFlat
        Left = 0
        Top = 0
        Width = 57
        Height = 23
        Align = alLeft
        Caption = #1060#1072#1081#1083
        ColorNormal = 13269273
        ColorOver = 14781481
        ColorPressed = 11757586
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = clWhite
        FontOver.Height = -13
        FontOver.Name = 'Tahoma'
        FontOver.Style = []
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = clWhite
        FontDown.Height = -13
        FontDown.Name = 'Tahoma'
        FontDown.Style = []
        IgnorBounds = True
        ImageIndentLeft = 0
        OnClick = ButtonFlat17Click
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 0
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
        SubTextFont.Charset = DEFAULT_CHARSET
        SubTextFont.Color = clWhite
        SubTextFont.Height = -13
        SubTextFont.Name = 'Tahoma'
        SubTextFont.Style = []
      end
    end
  end
  object FileOpenDialog: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 481
    Top = 210
  end
  object ImageList32: TImageList
    ColorDepth = cd32Bit
    Height = 32
    Width = 32
    Left = 305
    Top = 266
    Bitmap = {
      494C010101000800140020002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000040000000D0000
      0015000000160000001600000016000000160000001600000016000000160000
      001600000016000000150000000D000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000D0000002B0000
      003F000000430000004300000043000000430000004300000043000000430000
      0043000000430000003F0000002B0000000D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000157C7C7AC4AFAF
      ADFFADADABFFADADABFFADADABFFADADABFFADADABFFADADABFFADADABFFADAD
      ABFFADADABFFAFAFADFF7C7C7AC4000000150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016AFAFADFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFAFAFADFF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016AFAEABFFFFFF
      FFFFFFFFFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFE
      FFFFFFFFFFFFFFFFFFFFAEAEABFF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000030000
      0005000000050000000500000005000000050000000500000005000000050000
      0005000000050000000500000005000000050000000400000019B1AEAAFFFFFF
      FFFFFCFCFBFFFBFBFAFFFBFBFAFFFBFBFAFFFBFBFAFFFBFBFAFFFBFBFAFFFBFB
      FAFFFCFCFBFFFFFFFFFFADADABFF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000005000000120000001D0000
      001F0000001F0000001F0000001F0000001F0000001F0000001F0000001F0000
      001F0000001F0000001F0000001F0000001F0000001E0000002CB6AFA8FFFFFF
      FFFFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFFFFFFFFFADADABFF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000010000000320E202D6D0D1D
      296C0D1D296C0D1D296C0D1D296C0D1D296C0D1D296C0D1D296C0D1D296C0D1D
      296C0D1D296C0D1D296C0D1D296C0D1D296C0C1C266A06141D63B8B0A8FFFFFF
      FFFFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5
      F5FFF6F5F5FFFFFFFFFFADADABFF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000016408FC4F24398D2FF3F94
      D0FF3D92CEFF3D92CEFF3D92CEFF3D92CEFF3D92CEFF3D92CEFF3D92CEFF3D92
      CEFF3D92CEFF3D92CEFF3D92CEFF3D92CEFF3C92CFFF3390D2FFB7AEA6FFFFFF
      FFFFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F1
      F2FFF3F2F2FFFFFFFFFFADADABFF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000164398D2FF3E93CFFFA8FB
      FFFF9AF4FFFF95F3FFFF95F3FFFF95F3FFFF95F3FFFF95F3FFFF95F3FFFF95F3
      FFFF95F3FFFF95F3FFFF95F3FFFF95F3FFFF94F3FFFF8DF5FFFFB4AAA5FFFFFF
      FFFFF0F0EFFFF0F0EFFFF0F0EFFFEFF0EFFFEFEFEEFFEFEFEEFFEFEFEEFFEFEF
      EEFFEFEFEEFFFFFFFFFFADADABFF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000164297D1FF5CB3DFFF82D3
      F2FF9AEFFFFF8AEAFFFF8BEAFFFF8BEAFFFF8BEAFFFF8BEAFFFF8BEAFFFF8BEA
      FFFF8BEAFFFF8BEAFFFF8BEAFFFF8BEAFFFF8AEAFFFF85EDFFFFB2A8A4FFFFFF
      FFFFEEECEBFFEEEDECFFEEEDECFFEDECEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFADADABFF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000164095D0FF7BD3F2FF5EB2
      E0FFA5EFFFFF86E6FDFF87E5FDFF87E5FDFF87E5FDFF87E5FDFF87E5FDFF87E5
      FDFF87E5FDFF87E5FDFF87E5FDFF87E5FDFF86E6FEFF81E9FFFFB2A8A3FFFFFF
      FFFFEAE9E9FFEBEAEAFFEBEAEAFFEAE8E9FFFFFFFFFFC1BAB4FFA8A8A6FFA7A7
      A5FFA5A5A2FFFFFFFFFFAEAEACFF000000150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000163F94D0FF96ECFEFF3F96
      D1FFA6F0FFFF8FE6FEFF83E3FDFF84E3FDFF84E3FDFF84E3FDFF84E3FDFF84E3
      FDFF84E3FDFF84E3FDFF84E3FDFF84E3FDFF83E4FEFF7DE7FFFFB3A9A3FFFFFF
      FFFFE7E7E6FFE8E8E7FFE8E8E7FFE6E7E6FFFFFFFFFFA8A8A6FFEEECECFFF2F0
      F1FFF7F7F6FFFFFFFFFFAFAFADFF0000000D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000163E93CFFFA6F6FFFF449D
      D5FF8EDCF7FF9CE9FFFF7EE1FCFF81E1FCFF81E1FCFF81E1FCFF81E1FCFF81E1
      FCFF81E1FCFF81E1FCFF81E1FCFF81E1FCFF80E2FDFF79E4FFFFB3A9A4FFFFFF
      FFFFE4E3E2FFE5E4E3FFE5E4E3FFE4E3E2FFFFFFFFFFA7A7A5FFF2F0F1FFF5F5
      F4FFFFFFFFFFE9E8E8FF787775B3000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000163D92CFFFA6F5FFFF5EBB
      E6FF68BBE5FFAFEFFFFF7CE0FCFF7BDFFCFF7CDFFCFF7CDFFCFF7CDFFCFF7CDF
      FCFF7CDFFCFF7CDFFCFF7CDFFCFF7CDFFCFF7BE0FDFF75E2FFFFB4A9A4FFFFFF
      FFFFE0DFDEFFE1DFDEFFE1DFDEFFE0DFDEFFFFFFFFFFA5A5A2FFF7F7F6FFFFFF
      FFFFECE8E5FF746F6AAE00000007000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000163D92CFFFA9F3FFFF75D7
      F6FF419BD5FFB0EEFFFF8BE2FBFF77DDFBFF79DDFBFF79DDFBFF79DDFBFF79DD
      FBFF79DDFBFF79DDFBFF79DDFBFF79DDFBFF78DEFCFF72E0FFFFB7AAA5FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECE7
      E5FF89A5B8FF030B103C0000000A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000163C92CEFFAAF2FFFF81E6
      FFFF3E96D0FF97DFF8FFA1E7FEFF71DAFAFF74DBFAFF75DBFAFF75DBFAFF75DB
      FAFF75DBFAFF76DBFAFF76DBFAFF76DBFAFF75DBFAFF71DEFFFFAEB6B6FFB7AC
      A6FFB3ABA6FFB3ABA6FFB3ABA6FFB3ABA6FFB3ABA6FFB3ABA6FFB5ABA5FFB6BA
      B8FF83C5E9FF193C568C00000012000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000163C92CEFFAEF0FFFF7DE4
      FFFF52ADDEFF72C4EBFFBCEFFEFF6BD8FAFF6DD8FAFF6ED8FAFF6ED8FAFF6ED9
      FAFF6FD9FAFF72D9FAFF73D9FAFF73D9FAFF73D9FAFF71DAFCFF72D8F9FF72D8
      F9FF72D8F9FF72D8F9FF72D8F9FF72D8F9FF72D8F9FF72D8F9FF72D8F9FF87DF
      FBFFB8ECFEFF3B83B8E90000001B000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000163C92CFFFB1F1FFFF79E1
      FDFF67C7EFFF46A4DAFFC6F4FFFFC3F2FFFFC4F2FFFFC4F2FFFFC4F2FFFFC5F2
      FFFFC7F2FFFF6FD8FBFF70D7FAFF70D6F9FF70D6F9FF70D6F9FF6FD7FAFF6ED7
      FBFF6ED7FCFF6ED7FCFF6ED7FCFF6ED7FCFF6ED7FCFF6ED7FCFF6DD7FBFF6AD6
      FBFFBDF1FFFF65ADDBFF0206082F000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000163C92CFFFB5F1FFFF76DD
      FCFF7BE0FEFF51ACDEFF368BCAFF358BCBFF358BCBFF358BCBFF358BCBFF358B
      CBFF378BCBFF4EA9DDFF6FD8FCFF6ED6FAFF6CD4F9FF6CD4F9FF6BD4F9FF6BD4
      F9FF6BD4F9FF6BD4F9FF6BD4F9FF6BD4F9FF6BD4F9FF6BD4F9FF6BD3F9FF67D2
      F9FFA1E7FDFF93CAE9FF1532477B000000100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000163C92CFFFB8F1FFFF73DB
      FAFF76DCFBFF79DFFCFF79E0FDFF79E1FDFF7AE1FDFF7AE1FDFF7AE1FDFF7AE1
      FDFF7BE2FEFF53ACDEFF4EA8DDFF69D5FBFF64D2F9FF62D0F8FF61D0F8FF61D0
      F8FF61D0F8FF61D0F8FF61D0F8FF61D0F8FF61D0F8FF61D0F8FF61D0F8FF5FD0
      F8FF7EDBFBFFC8EDFBFF2C6B98CA000000130000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000163B92CFFFBDF2FFFF70DA
      FAFF73DAFAFF74DBFAFF75DBFBFF75DBFBFF75DBFBFF75DBFBFF75DBFBFF75DC
      FBFF76DCFCFF78DFFDFF51ACDEFF49A6DDFFDAF9FFFFD6F7FFFFD5F6FFFFD5F6
      FFFFD5F6FFFFD5F6FFFFD5F6FFFFD5F6FFFFD5F6FFFFD5F7FFFFD5F7FFFFD5F7
      FFFFD4F7FFFFD9FCFFFF3C94D0FF0000000D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000163B92CFFFC0F3FFFF6DD8
      FAFF71D8FAFF72D8FAFF72D8FAFF72D8FAFF72D8FAFF72D8FAFF72D8FAFF72D8
      FAFF72D8FAFF73DAFBFF75DDFDFF50ABDDFF378CCBFF358CCBFF358CCBFF358C
      CBFF358CCBFF358CCBFF358CCBFF358BCBFF348BCBFF348CCCFF3790CEFF3991
      CEFF3A92CFFF3C94D0FF2D6890B4000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000163B92CFFFC4F3FFFF6BD6
      F9FF6FD7F9FF70D7F9FF70D7F9FF70D7F9FF70D7F9FF70D7F9FF70D7F9FF70D7
      F9FF70D7F9FF70D7F9FF71D9FAFF72DAFBFF73DCFCFF73DCFCFF73DCFCFF73DC
      FCFF73DCFCFF73DCFCFF73DCFCFF72DCFCFF6FDCFDFFBDF3FFFF3C93CFFF0000
      0016000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000163A92CFFFC9F5FFFF68D4
      F9FF6DD5F9FF6ED5F9FF6ED5F9FF6ED5F9FF6ED5F9FF6ED5F9FF6DD5F9FF6DD5
      F9FF6CD5F9FF6CD5F9FF6DD5F9FF6DD5F9FF6DD5FAFF6DD5FAFF6DD5FAFF6DD5
      FAFF6DD5FAFF6DD5FAFF6DD5FAFF6CD5FAFF68D5FAFFC7F5FFFF3B92CFFF0000
      0016000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000163A92CFFFCFF5FFFF66D3
      F8FF6BD4F8FF6CD4F8FF6CD4F8FF6CD4F8FF6CD4F8FF6AD4F8FF67D3F8FF65D2
      F8FF65D2F8FF65D2F8FF65D2F8FF65D2F8FF65D2F8FF65D2F8FF65D2F8FF65D2
      F8FF65D2F8FF65D2F8FF65D2F8FF64D2F8FF61D2F9FFD5F7FFFF3A92CFFF0000
      0015000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000163A92CFFFD3F6FFFF62D1
      F8FF67D2F8FF68D3F8FF68D3F8FF68D3F8FF68D2F8FF65D1F8FFA8E7FDFFDAF7
      FFFFDAF8FFFFDAF8FFFFDAF8FFFFDAF8FFFFDAF8FFFFDAF8FFFFDAF8FFFFDAF8
      FFFFDAF8FFFFDAF8FFFFDAF8FFFFDAF8FFFFD9F9FFFFDEFDFFFF3C94D0FF0000
      000D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000153A92CFFFD7F8FFFF5CCF
      F9FF5FCFF8FF60CFF8FF60CFF8FF60CFF8FF60CFF8FF5DCFF8FFBCEEFFFF338C
      CCFF3891CEFF3992CFFF3992CFFF3992CFFF3992CFFF3992CFFF3992CFFF3992
      CFFF3992CFFF3992CFFF3992CFFF3992CFFF3992CFFF3C94D0FF2D6890B40000
      0004000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000D3C94D0FFDBFCFFFFD7F8
      FFFFD8F7FFFFD8F7FFFFD8F7FFFFD8F7FFFFD8F7FFFFD8F8FFFFDBFCFFFF3B93
      D0FF0000000D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000042D6890B43C94D0FF3A92
      CFFF3992CFFF3992CFFF3992CFFF3992CFFF3992CFFF3A92CFFF3C94D0FF2E68
      90B3000000040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000200000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF000000000000000000000000
      FFFF8000000000000000000000000000FFFF8000000000000000000000000000
      FFFF8000000000000000000000000000FFFF8000000000000000000000000000
      FFFF800000000000000000000000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000100000000000000000000000000000001000000000000000000000000
      0000000100000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000F000000000000000000000000
      0000000F0000000000000000000000000000000F000000000000000000000000
      0000000F0000000000000000000000000000000F000000000000000000000000
      0007FFFF0000000000000000000000000007FFFF000000000000000000000000
      FFFFFFFF00000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end
