object Form1: TForm1
  Left = 384
  Top = 191
  Width = 389
  Height = 351
  Caption = 'SERVER TCP'
  Color = clBtnFace
  Font.Charset = OEM_CHARSET
  Font.Color = clBlue
  Font.Height = -19
  Font.Name = 'Terminal'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    381
    324)
  PixelsPerInch = 96
  TextHeight = 18
  object btn1: TBitBtn
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'OPEN'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TBitBtn
    Left = 88
    Top = 8
    Width = 75
    Height = 25
    Caption = 'CLOSE'
    TabOrder = 1
    OnClick = btn2Click
  end
  object mmo1: TMemo
    Left = 8
    Top = 40
    Width = 362
    Height = 273
    Anchors = [akLeft, akTop, akRight, akBottom]
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object idtcpsrvr1: TIdTCPServer
    OnStatus = idtcpsrvr1Status
    Bindings = <>
    DefaultPort = 30000
    OnAfterBind = idtcpsrvr1AfterBind
    OnConnect = idtcpsrvr1Connect
    OnDisconnect = idtcpsrvr1Disconnect
    OnExecute = idtcpsrvr1Execute
    Left = 224
    Top = 128
  end
end
