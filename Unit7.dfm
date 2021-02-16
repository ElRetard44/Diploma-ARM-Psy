object Form7: TForm7
  Left = 230
  Top = 38
  BorderStyle = bsDialog
  Caption = #1055#1088#1086#1092#1080#1083#1100
  ClientHeight = 591
  ClientWidth = 905
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 8
    Top = 8
    Width = 441
    Height = 569
    TabOrder = 0
  end
  object ScrollBox2: TScrollBox
    Left = 464
    Top = 8
    Width = 433
    Height = 569
    TabOrder = 1
  end
  object DataSource1: TDataSource
    Left = 808
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Connection = MyModule.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 872
    Top = 8
    object ADOQuery1test1: TWideStringField
      FieldName = 'test1'
      Size = 255
    end
  end
end
