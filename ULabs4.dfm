object Form1: TForm1
  Left = 922
  Top = 190
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1041#1080#1085#1072#1088#1085#1086#1077' '#1076#1077#1088#1077#1074#1086
  ClientHeight = 600
  ClientWidth = 603
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl: TLabel
    Left = 8
    Top = 8
    Width = 161
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1101#1083#1077#1084#1077#1085#1090#1086#1074
  end
  object Derev: TMemo
    Left = 0
    Top = 56
    Width = 601
    Height = 537
    TabOrder = 0
  end
  object Vvod: TEdit
    Left = 0
    Top = 32
    Width = 601
    Height = 21
    TabOrder = 1
    Text = '1'
  end
  object Run: TButton
    Left = 224
    Top = 0
    Width = 145
    Height = 25
    HelpContext = 1
    Caption = #1041#1072#1093#1085#1091#1090#1100' '#1073#1080#1085#1072#1088#1085#1086#1077' '#1076#1077#1088#1077#1074#1086
    TabOrder = 2
    OnClick = RunClick
  end
end
