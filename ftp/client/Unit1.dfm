object Form1: TForm1
  Left = 283
  Top = 214
  Width = 411
  Height = 344
  Caption = 'FTP Client'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 40
    Width = 9
    Height = 13
    Caption = '...'
  end
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
    Caption = 'UPLOAD'
    TabOrder = 1
    OnClick = btn2Click
  end
  object idftp1: TIdFTP
    IPVersion = Id_IPv4
    AutoLogin = True
    Passive = True
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 24
    Top = 128
  end
  object dlgOpen1: TOpenDialog
    Left = 120
    Top = 96
  end
  object idntfrz1: TIdAntiFreeze
    Left = 224
    Top = 64
  end
end
