unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdUDPBase, IdUDPClient, StdCtrls,
  ExtCtrls, IdAntiFreezeBase, IdAntiFreeze;

type
  TForm1 = class(TForm)
    idpclnt1: TIdUDPClient;
    btn1: TButton;
    btn2: TButton;
    mmo1: TMemo;
    tmr1: TTimer;
    idntfrz1: TIdAntiFreeze;
    btn3: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure btn3Click(Sender: TObject);
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
var
  i: Integer;
begin
  idpclnt1.Send('HELLO WORLD UDP');
  idpclnt1.Send('127.0.0.1', 12345, 'SEND TO ANOTHER PORT');
  for i := 1000 to 20000 do
  begin
    idpclnt1.Send('127.0.0.1', i, StringOfChar('*', 512));
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  str1: string;
begin
  str1 := idpclnt1.ReceiveString(1000);
  if Length(str1) > 0 then
  begin
    mmo1.Lines.Add(FormatDateTime('hh:nn:ss.zzz', Now) + ' : ' + str1);
  end;
end;

procedure TForm1.tmr1Timer(Sender: TObject);
var
  str1: string;
begin
  tmr1.Enabled := False;
  str1 := idpclnt1.ReceiveString();
  if Length(str1) > 0 then
  begin
    mmo1.Lines.Add(FormatDateTime('hh:nn:ss.zzz', Now) + ' : ' + str1);
  end;
  tmr1.Enabled := True;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  idpclnt1.Broadcast('BROADCAST DATA', 7000, '255.255.255.255');
end;

end.

