unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient,

  ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    idtcpclnt1: TIdTCPClient;
    btnConnect: TBitBtn;
    btnDisconnect: TBitBtn;
    mmoLog: TMemo;
    btnSendFile: TBitBtn;
    dlgOpen1: TOpenDialog;
    btnSendPicture: TBitBtn;
    btnScreenshot: TBitBtn;
    imgPreview: TImage;
    tmr1: TTimer;
    procedure btnConnectClick(Sender: TObject);
    procedure btnDisconnectClick(Sender: TObject);
    procedure idtcpclnt1Disconnected(Sender: TObject);
    procedure idtcpclnt1Connected(Sender: TObject);
    procedure btnSendFileClick(Sender: TObject);
    procedure btnSendPictureClick(Sender: TObject);
    procedure btnScreenshotClick(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// Capture the entire screen
// Screenshot des gesamten Bildschirms

procedure ScreenShot(Bild: TBitMap);
var
  c: TCanvas;
  r: TRect;
begin
  c := TCanvas.Create;
  c.Handle := GetWindowDC(GetDesktopWindow);
  try
    r := Rect(0, 0, Screen.Width, Screen.Height);
    Bild.Width := Screen.Width;
    Bild.Height := Screen.Height;
    Bild.Canvas.CopyRect(r, c, r);
  finally
    ReleaseDC(0, c.Handle);
    c.Free;
  end;
end;

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

procedure TForm1.btnConnectClick(Sender: TObject);
begin
  try
    idtcpclnt1.ConnectTimeout := 10000;
    idtcpclnt1.Connect('127.0.0.1', 3000);
    //  LogData(mmoLog,'Connected');
  except
    on e: Exception do
    begin
      LogData(mmoLog, 'ERROR : ' + e.Message);
    end;
  end;
end;

procedure TForm1.btnDisconnectClick(Sender: TObject);
begin
  try
    idtcpclnt1.Disconnect;
  except

  end;
end;

procedure TForm1.idtcpclnt1Disconnected(Sender: TObject);
begin
  LogData(mmoLog, 'Disconnected');
end;

procedure TForm1.idtcpclnt1Connected(Sender: TObject);
begin
  LogData(mmoLog, 'Connected');
end;

procedure TForm1.btnSendFileClick(Sender: TObject);
var
  stream_file: TMemoryStream;
begin
  try
    if dlgOpen1.Execute then
    begin
      LogData(mmoLog, 'Select file : ' + dlgOpen1.FileName);

      idtcpclnt1.IOHandler.WriteLn('send file');
      idtcpclnt1.IOHandler.WriteLn(ExtractFileName(dlgOpen1.FileName));

      stream_file := TMemoryStream.Create;
      stream_file.Position := 0;
      stream_file.LoadFromFile(dlgOpen1.FileName);
      idtcpclnt1.IOHandler.Write(stream_file, 0, True);
      FreeAndNil(stream_file);
      //    idtcpclnt1.IOHandler.WriteFile(dlgOpen1.FileName);
    end;
  except

  end;
end;

procedure TForm1.btnSendPictureClick(Sender: TObject);
var
  stream_file: TMemoryStream;
begin
  try
    if dlgOpen1.Execute then
    begin
      LogData(mmoLog, 'Select file : ' + dlgOpen1.FileName);

      idtcpclnt1.IOHandler.WriteLn('image');
      //    idtcpclnt1.IOHandler.WriteLn(ExtractFileName(dlgOpen1.FileName));

      stream_file := TMemoryStream.Create;
      stream_file.Position := 0;
      stream_file.LoadFromFile(dlgOpen1.FileName);
      idtcpclnt1.IOHandler.Write(stream_file, 0, True);
      FreeAndNil(stream_file);
      //    idtcpclnt1.IOHandler.WriteFile(dlgOpen1.FileName);
    end;
  except

  end;
end;

procedure TForm1.btnScreenshotClick(Sender: TObject);
begin
  try
    ScreenShot(imgPreview.Picture.Bitmap);
    imgPreview.Repaint;
  except

  end;
end;

procedure TForm1.tmr1Timer(Sender: TObject);
var
  bmpx: TBitmap;
  jpgx: TJPEGImage;
  msx: TMemoryStream;
begin
  try
    bmpx := TBitmap.Create;
    jpgx := TJPEGImage.Create;
    ScreenShot(bmpx);
    jpgx.Assign(bmpx);

    jpgx.CompressionQuality:=25;
    jpgx.Compress;

    msx := TMemoryStream.Create;
    msx.Position := 0;
    jpgx.SaveToStream(msx);

    idtcpclnt1.IOHandler.WriteLn('image');
    idtcpclnt1.IOHandler.Write(msx, 0, True);

    FreeAndNil(msx);
    FreeAndNil(jpgx);
    FreeAndNil(bmpx);
  except
    on e: Exception do
    begin
      FreeAndNil(msx);
      FreeAndNil(jpgx);
      FreeAndNil(bmpx);
    end;
  end;
end;

end.

