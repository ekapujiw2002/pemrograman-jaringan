unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient;

type
  TForm1 = class(TForm)
    idtcpclnt1: TIdTCPClient;
    btn1: TBitBtn;
    btn2: TBitBtn;
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
    with idtcpclnt1 do
    begin
      Host := '127.0.0.1';
      Port := 30000;
      Connect;
    end;
  except
    on err: Exception do
    begin

    end;
  end;
end;

end.

