object Form1: TForm1
  Left = 192
  Top = 153
  Width = 319
  Height = 283
  Caption = 'Client'
  Color = clBtnFace
  Font.Charset = OEM_CHARSET
  Font.Color = clBlack
  Font.Height = -19
  Font.Name = 'Terminal'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    311
    256)
  PixelsPerInch = 96
  TextHeight = 18
  object btn1: TBitBtn
    Left = 8
    Top = 8
    Width = 81
    Height = 25
    Caption = 'CONNECT'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TBitBtn
    Left = 96
    Top = 8
    Width = 113
    Height = 25
    Caption = 'DISCONNECT'
    TabOrder = 1
    OnClick = btn2Click
  end
  object lbledt1: TLabeledEdit
    Left = 8
    Top = 56
    Width = 201
    Height = 26
    EditLabel.Width = 40
    EditLabel.Height = 18
    EditLabel.Caption = 'DATA'
    TabOrder = 2
  end
  object btn3: TBitBtn
    Left = 8
    Top = 88
    Width = 75
    Height = 25
    Caption = 'SEND'
    TabOrder = 3
    OnClick = btn3Click
  end
  object mmo1: TMemo
    Left = 8
    Top = 120
    Width = 297
    Height = 129
    Anchors = [akLeft, akTop, akRight, akBottom]
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object idtcpclnt1: TIdTCPClient
    ConnectTimeout = 0
    IPVersion = Id_IPv4
    Port = 0
    ReadTimeout = -1
    Left = 64
    Top = 80
  end
  object tmr1: TTimer
    OnTimer = tmr1Timer
    Left = 96
    Top = 88
  end
  object tmr2: TTimer
    Interval = 100
    OnTimer = tmr2Timer
    Left = 128
    Top = 96
  end
end
