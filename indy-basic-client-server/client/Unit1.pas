unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, ExtCtrls;

type
  TForm1 = class(TForm)
    idtcpclnt1: TIdTCPClient;
    btn1: TBitBtn;
    btn2: TBitBtn;
    tmr1: TTimer;
    lbledt1: TLabeledEdit;
    btn3: TBitBtn;
    mmo1: TMemo;
    tmr2: TTimer;
    procedure btn1Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure tmr2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  try
    with idtcpclnt1 do
    begin
      //      Host := '127.0.0.1';
      //      Port := 30000;
      //      Connect;
      ConnectTimeout := 5000;
      Connect('127.0.0.1', 30000);
      if Connected then
      begin
        ShowMessage('koneksi ok');
      end;
    end;
  except
    on err: Exception do
    begin

    end;
  end;
end;

procedure TForm1.tmr1Timer(Sender: TObject);
begin
  try
    Form1.Caption := 'Client : ' + FormatDateTime('dd-mm-yyyy hh:nn:ss.zzz',
      Now);
  except

  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  try
    idtcpclnt1.Disconnect;
  except

  end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  try
    idtcpclnt1.IOHandler.Write(lbledt1.Text);
  except

  end;
end;

procedure TForm1.tmr2Timer(Sender: TObject);
var
  s1: string;
begin
  try
    with idtcpclnt1 do
    begin
      if Connected then
      begin
        if not IOHandler.InputBufferIsEmpty then
        begin
          s1 := IOHandler.InputBufferAsString();
          mmo1.Lines.Add(s1);
        end;
      end;
    end;
  except

  end;
end;

end.

