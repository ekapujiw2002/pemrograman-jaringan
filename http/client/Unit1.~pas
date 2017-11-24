unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, StdCtrls, Buttons, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL;

type
  TForm1 = class(TForm)
    idhttp1: TIdHTTP;
    btn1: TBitBtn;
    edt1: TEdit;
    mmo1: TMemo;
    idslhndlrscktpnsl1: TIdSSLIOHandlerSocketOpenSSL;
    procedure btn1Click(Sender: TObject);
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
    with idhttp1 do
    begin
      ConnectTimeout := 10000;
      ReadTimeout := 15000;
      mmo1.Text := Get(edt1.Text);
    end;
  except
    on err: Exception do
    begin
      mmo1.Text := 'Error ' + err.Message;
    end;
  end;
end;

end.

