object Form1: TForm1
  Left = 343
  Top = 273
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
  PixelsPerInch = 96
  TextHeight = 16
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
    Width = 505
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
  object idtcpclnt1: TIdTCPClient
    OnDisconnected = idtcpclnt1Disconnected
    OnConnected = idtcpclnt1Connected
    ConnectTimeout = 0
    IPVersion = Id_IPv4
    Port = 0
    ReadTimeout = -1
    Left = 16
    Top = 56
  end
  object dlgOpen1: TOpenDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 176
    Top = 128
  end
end
