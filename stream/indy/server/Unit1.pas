unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdCmdTCPServer, IdBaseComponent, IdComponent, IdCustomTCPServer,
  IdTCPServer, StdCtrls, Buttons,

  IdContext, ExtCtrls,

  jpeg;

type
  TForm1 = class(TForm)
    idtcpsrvr1: TIdTCPServer;
    btnOpen: TBitBtn;
    mmoLog: TMemo;
    btnClose: TBitBtn;
    imgPreview: TImage;
    procedure btnOpenClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure idtcpsrvr1Execute(AContext: TIdContext);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses IdIOHandler;

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

procedure TForm1.btnOpenClick(Sender: TObject);
begin
  try
    idtcpsrvr1.Active := True;
    LogData(mmoLog, 'Server opened');
  except
    on e: Exception do
    begin
      ShowMessage('ERROR :'#$d#10 + e.Message);
    end;
  end;
end;

procedure TForm1.btnCloseClick(Sender: TObject);
begin
  try
    idtcpsrvr1.Active := False;
    LogData(mmoLog, 'Server closed');
  except
    on e: Exception do
    begin
      ShowMessage('ERROR :'#$d#10 + e.Message);
    end;
  end;
end;

procedure TForm1.idtcpsrvr1Execute(AContext: TIdContext);
var
  cmdx: string;
  stream_server: TMemoryStream;
  jpgx: TJPEGImage;
begin
  try
    cmdx := AContext.Connection.IOHandler.ReadLn();
    LogData(mmoLog, 'Got command from ' + AContext.Binding.PeerIP + ': ' +
      cmdx);

    if cmdx = 'send file' then
    begin
      cmdx := AContext.Connection.IOHandler.ReadLn(#13#10, 5000);
      LogData(mmoLog, 'Got filename from ' + AContext.Binding.PeerIP + ': ' +
        cmdx);
      if cmdx = '' then
      begin
        LogData(mmoLog, 'Timeout or no filename!!!');
      end
      else
      begin
        LogData(mmoLog, 'Filename is ' + cmdx);

        LogData(mmoLog, 'Receiving stream...');
        stream_server := TMemoryStream.Create;
        stream_server.Position := 0;
        //        AContext.Connection.IOHandler.ReadTimeout := 5000;
        AContext.Connection.IOHandler.ReadStream(stream_server);
        stream_server.SaveToFile(cmdx);
        FreeAndNil(stream_server);
        LogData(mmoLog, 'Receive stream finish');

      end;
    end;

    if cmdx = 'image' then
    begin
      LogData(mmoLog, 'Receiving stream...');
      stream_server := TMemoryStream.Create;
      stream_server.Position := 0;
      //        AContext.Connection.IOHandler.ReadTimeout := 5000;
      AContext.Connection.IOHandler.ReadStream(stream_server);
      //      stream_server.SaveToFile(cmdx);

      stream_server.Position := 0;
      //      imgPreview.Picture.Bitmap.LoadFromStream(stream_server);

      jpgx := TJPEGImage.Create;
      jpgx.LoadFromStream(stream_server);
      imgPreview.Picture.Assign(jpgx);
      imgPreview.Repaint;
      FreeAndNil(jpgx);

      LogData(mmoLog, 'Receive stream finish '+inttostr(stream_server.Size));
      FreeAndNil(stream_server);
    end;

  except

  end;
end;

end.

 