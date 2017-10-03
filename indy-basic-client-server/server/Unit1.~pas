unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdCustomTCPServer, IdTCPServer,
  StdCtrls, Buttons,

  IdContext;

type
  TForm1 = class(TForm)
    idtcpsrvr1: TIdTCPServer;
    btn1: TBitBtn;
    btn2: TBitBtn;
    mmo1: TMemo;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure idtcpsrvr1Execute(AContext: TIdContext);
    procedure idtcpsrvr1AfterBind(Sender: TObject);
    procedure idtcpsrvr1Connect(AContext: TIdContext);
    procedure idtcpsrvr1Status(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure idtcpsrvr1Disconnect(AContext: TIdContext);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure LogData(amemo: TMemo; amsg: string);
begin
  try
    amemo.Lines.Add(
      FormatDateTime('dd-mm-yyyy hh:nn:ss.zzz', Now) +
      ' : ' +
      amsg
      );
  except

  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  idtcpsrvr1.Active := True;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  idtcpsrvr1.Active := False;
end;

procedure TForm1.idtcpsrvr1Execute(AContext: TIdContext);
var
  rx: string;
  rb: Byte;
begin
  try
    //    rx := AContext.Connection.IOHandler.ReadLn(#13#10);
//    rx := AContext.Connection.IOHandler.ReadLn(#13#10, 5000);
//    LogData(mmo1, 'DATA KLIEN : ' + rx);

//    rb := AContext.Connection.IOHandler.ReadByte;
//    LogData(mmo1, IntToStr(AContext.Connection.IOHandler.MaxCapturedLines));
//    LogData(mmo1, 'DATA KLIEN : ' + IntToStr(rb));

    if not AContext.Connection.IOHandler.InputBufferIsEmpty then
    begin
      //            rx := AContext.Connection.IOHandler.InputBufferAsString();
      rx := AContext.Connection.IOHandler.InputBuffer.AsString;
      AContext.Connection.IOHandler.InputBuffer.Clear;
      LogData(mmo1, 'DATA KLIEN : ' + rx);
    end;

  except
    on er: Exception do
    begin
      LogData(mmo1, 'ERROR : ' + er.Message);
    end;
  end;
end;

procedure TForm1.idtcpsrvr1AfterBind(Sender: TObject);
begin
  LogData(mmo1, 'Server binding finish');
end;

procedure TForm1.idtcpsrvr1Connect(AContext: TIdContext);
begin
  LogData(mmo1, 'Client connected from ' + AContext.Connection.Socket.BoundIP);
end;

procedure TForm1.idtcpsrvr1Status(ASender: TObject;
  const AStatus: TIdStatus; const AStatusText: string);
begin
  LogData(mmo1, 'Status = ' + AStatusText);
end;

procedure TForm1.idtcpsrvr1Disconnect(AContext: TIdContext);
begin
  LogData(mmo1, 'Client disconnected..');
end;

end.

