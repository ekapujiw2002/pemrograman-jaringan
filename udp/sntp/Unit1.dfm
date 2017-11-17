object Form1: TForm1
  Left = 300
  Top = 211
  Width = 386
  Height = 307
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TButton
    Left = 8
    Top = 8
    Width = 113
    Height = 25
    Caption = 'TEST SYNCH'
    TabOrder = 0
    OnClick = btn1Click
  end
  object mmo1: TMemo
    Left = 8
    Top = 40
    Width = 361
    Height = 233
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object idsntp1: TIdSNTP
    BroadcastEnabled = True
    Host = 'pool.ntp.org'
    Port = 123
    ReceiveTimeout = 5000
    Left = 128
    Top = 88
  end
  object idchrgndpsrvr1: TIdChargenUDPServer
    OnStatus = idchrgndpsrvr1Status
    BroadcastEnabled = True
    Bindings = <>
    OnUDPRead = idchrgndpsrvr1UDPRead
    Left = 192
    Top = 64
  end
end
