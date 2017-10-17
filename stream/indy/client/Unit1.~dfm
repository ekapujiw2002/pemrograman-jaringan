object Form1: TForm1
  Left = 203
  Top = 180
  Width = 534
  Height = 390
  Caption = 'CLIENT STREAM'
  Color = clBtnFace
  Font.Charset = OEM_CHARSET
  Font.Color = clBlack
  Font.Height = -16
  Font.Name = 'Terminal'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    526
    363)
  PixelsPerInch = 96
  TextHeight = 16
  object imgPreview: TImage
    Left = 320
    Top = 40
    Width = 201
    Height = 193
    Anchors = [akLeft, akTop, akRight, akBottom]
    Center = True
    Proportional = True
    Stretch = True
  end
  object btnConnect: TBitBtn
    Left = 8
    Top = 8
    Width = 89
    Height = 25
    Caption = '&Connect'
    TabOrder = 0
    OnClick = btnConnectClick
  end
  object btnDisconnect: TBitBtn
    Left = 104
    Top = 8
    Width = 137
    Height = 25
    Caption = '&Disconnect'
    TabOrder = 1
    OnClick = btnDisconnectClick
  end
  object mmoLog: TMemo
    Left = 8
    Top = 40
    Width = 305
    Height = 305
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object btnSendFile: TBitBtn
    Left = 248
    Top = 8
    Width = 75
    Height = 25
    Caption = '&Send'
    TabOrder = 3
    OnClick = btnSendFileClick
  end
  object btnSendPicture: TBitBtn
    Left = 328
    Top = 8
    Width = 75
    Height = 25
    Caption = '&Pic'
    TabOrder = 4
    OnClick = btnSendPictureClick
  end
  object btnScreenshot: TBitBtn
    Left = 408
    Top = 8
    Width = 97
    Height = 25
    Caption = 'S&creen'
    TabOrder = 5
    OnClick = btnScreenshotClick
  end
  object idtcpclnt1: TIdTCPClient
    OnDisconnected = idtcpclnt1Disconnected
    OnConnected = idtcpclnt1Connected
    ConnectTimeout = 0
    IPVersion = Id_IPv4
    Port = 0
    ReadTimeout = -1
    Left = 233
    Top = 167
  end
  object dlgOpen1: TOpenDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 265
    Top = 167
  end
  object tmr1: TTimer
    OnTimer = tmr1Timer
    Left = 160
    Top = 120
  end
end
