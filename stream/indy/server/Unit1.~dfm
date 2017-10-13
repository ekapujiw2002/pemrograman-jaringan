object Form1: TForm1
  Left = 398
  Top = 232
  Width = 356
  Height = 364
  Caption = 'SERVER STREAM'
  Color = clBtnFace
  Font.Charset = OEM_CHARSET
  Font.Color = clBlack
  Font.Height = -16
  Font.Name = 'Terminal'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    340
    326)
  PixelsPerInch = 96
  TextHeight = 16
  object btnOpen: TBitBtn
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = '&Open'
    TabOrder = 0
    OnClick = btnOpenClick
  end
  object mmoLog: TMemo
    Left = 8
    Top = 40
    Width = 321
    Height = 273
    Anchors = [akLeft, akTop, akRight, akBottom]
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object btnClose: TBitBtn
    Left = 88
    Top = 8
    Width = 75
    Height = 25
    Caption = '&Close'
    TabOrder = 2
    OnClick = btnCloseClick
  end
  object idtcpsrvr1: TIdTCPServer
    Bindings = <>
    DefaultPort = 3000
    OnExecute = idtcpsrvr1Execute
    Left = 56
    Top = 48
  end
end
