object Form1: TForm1
  Left = 192
  Top = 164
  Width = 676
  Height = 393
  Caption = 'HTTP CLIENT DEMO'
  Color = clBtnFace
  Font.Charset = OEM_CHARSET
  Font.Color = clBlack
  Font.Height = -16
  Font.Name = 'Terminal'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    660
    355)
  PixelsPerInch = 96
  TextHeight = 16
  object btn1: TBitBtn
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Open'
    TabOrder = 0
    OnClick = btn1Click
  end
  object edt1: TEdit
    Left = 88
    Top = 8
    Width = 567
    Height = 24
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    Text = 'https://www.tokopedia.com/search?q=box'
  end
  object mmo1: TMemo
    Left = 8
    Top = 40
    Width = 648
    Height = 305
    Anchors = [akLeft, akTop, akRight, akBottom]
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object idhttp1: TIdHTTP
    IOHandler = idslhndlrscktpnsl1
    AllowCookies = True
    HandleRedirects = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 300
    Top = 163
  end
  object idslhndlrscktpnsl1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.CertFile = '6042112_localhost.cert'
    SSLOptions.KeyFile = '6042112_localhost.key'
    SSLOptions.Mode = sslmClient
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 332
    Top = 163
  end
end
