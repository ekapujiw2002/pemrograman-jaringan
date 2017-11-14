object Form1: TForm1
  Left = 372
  Top = 193
  Width = 281
  Height = 294
  Caption = 'UDP CLIENT'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'KIRIM'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 8
    Top = 40
    Width = 75
    Height = 25
    Caption = 'TRIMA'
    TabOrder = 1
    OnClick = btn2Click
  end
  object mmo1: TMemo
    Left = 8
    Top = 72
    Width = 257
    Height = 185
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object btn3: TButton
    Left = 88
    Top = 8
    Width = 75
    Height = 25
    Caption = 'BROADCAST'
    TabOrder = 3
    OnClick = btn3Click
  end
  object idpclnt1: TIdUDPClient
    BoundIP = '0.0.0.0'
    BoundPort = 6000
    Host = '127.0.0.1'
    Port = 56789
    Left = 122
    Top = 119
  end
  object tmr1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmr1Timer
    Left = 154
    Top = 119
  end
  object idntfrz1: TIdAntiFreeze
    Left = 90
    Top = 119
  end
end
