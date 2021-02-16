object Results: TResults
  Left = 159
  Top = 8
  Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099
  ClientHeight = 660
  ClientWidth = 1164
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 10
    Width = 166
    Height = 24
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1090#1077#1089#1090' =>'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 680
    Top = 10
    Width = 190
    Height = 22
    Caption = #1044#1072#1085#1085#1099#1081' '#1090#1077#1089#1090' '#1087#1088#1086#1096#1083#1080':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 48
    Width = 1145
    Height = 561
    DefaultColWidth = 68
    DefaultRowHeight = 30
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goAlwaysShowEditor]
    ParentFont = False
    TabOrder = 0
    OnSelectCell = StringGrid1SelectCell
  end
  object ComboBox1: TComboBox
    Left = 192
    Top = 10
    Width = 473
    Height = 27
    DropDownCount = 10
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnChange = ComboBox1Change
  end
  object Button1: TButton
    Left = 944
    Top = 616
    Width = 209
    Height = 33
    Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100' '#1076#1080#1072#1075#1088#1072#1084#1084#1091
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Visible = False
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    Left = 8
  end
  object ADOQuery1: TADOQuery
    Connection = MyModule.ADOConnection1
    Parameters = <>
    Left = 40
  end
end
