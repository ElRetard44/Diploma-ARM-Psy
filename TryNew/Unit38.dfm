object Form38: TForm38
  Left = 163
  Top = 7
  Caption = #1042#1099#1073#1086#1088' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1093' '#1090#1077#1089#1090#1086#1074
  ClientHeight = 636
  ClientWidth = 1013
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1013
    Height = 636
    Align = alClient
    AutoSize = True
    BevelInner = bvSpace
    TabOrder = 0
    object Label1: TLabel
      Left = 18
      Top = 2
      Width = 314
      Height = 32
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1081' '#1090#1077#1089#1090#1099
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 32
      Top = 568
      Width = 273
      Height = 57
      Caption = #1042#1077#1088#1085#1091#1090#1100#1089#1103' '#1074' '#1075#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object ScrollBox1: TScrollBox
      Left = 48
      Top = 50
      Width = 945
      Height = 503
      TabOrder = 1
    end
  end
end
