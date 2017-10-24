object Form1: TForm1
  Left = 201
  Top = 189
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 305
  ClientWidth = 506
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poDefaultPosOnly
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 168
    Top = 40
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 168
    Top = 64
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object Bevel1: TBevel
    Left = 0
    Top = 120
    Width = 289
    Height = 9
    Shape = bsFrame
  end
  object Label3: TLabel
    Left = 168
    Top = 160
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 168
    Top = 200
    Width = 32
    Height = 13
    Caption = 'Label4'
  end
  object Label5: TLabel
    Left = 8
    Top = 272
    Width = 49
    Height = 13
    Caption = 'Thread 1 :'
    Visible = False
  end
  object Button1: TButton
    Left = 56
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 56
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Stop'
    Enabled = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 56
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 56
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Stop'
    Enabled = False
    TabOrder = 3
    OnClick = Button4Click
  end
  object ProgressBar1: TProgressBar
    Left = 64
    Top = 272
    Width = 217
    Height = 17
    TabOrder = 4
    Visible = False
  end
  object ButtonStopAll: TButton
    Left = 112
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Stop all'
    Enabled = False
    TabOrder = 5
    OnClick = ButtonStopAllClick
  end
  object btn1: TButton
    Left = 296
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 6
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 296
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Start Thread'
    TabOrder = 7
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 296
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Stop Thread'
    TabOrder = 8
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 296
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Pause Thread'
    TabOrder = 9
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 296
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Resume Thread'
    TabOrder = 10
    OnClick = btn5Click
  end
  object BMDThread1: TBMDThread
    ThreadGroup = BMDThreadGroup1
    UpdateEnabled = True
    OnExecute = BMDThread1Execute
    OnStart = BMDThread1Start
    OnTerminate = BMDThread1Terminate
    Left = 255
    Top = 138
  end
  object BMDThread2: TBMDThread
    ThreadGroup = BMDThreadGroup1
    UpdatePriority = 1
    UpdateEnabled = True
    OnExecute = BMDThread2Execute
    OnStart = BMDThread2Start
    OnTerminate = BMDThread2Terminate
    Left = 223
    Top = 138
  end
  object BMDThreadGroup1: TBMDThreadGroup
    OnUpdate = BMDThreadGroup1Update
    OnStart = BMDThreadGroup1Start
    OnTerminate = BMDThreadGroup1Terminate
    Left = 287
    Top = 138
  end
  object bmdthrd1: TBMDThread
    UpdateEnabled = False
    OnExecute = bmdthrd1Execute
    OnStart = bmdthrd1Start
    OnTerminate = bmdthrd1Terminate
    Left = 191
    Top = 138
  end
end
