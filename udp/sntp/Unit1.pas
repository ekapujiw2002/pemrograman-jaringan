unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdUDPBase, IdUDPClient, StdCtrls,
  IdSNTP, IdUDPServer, IdChargenUDPServer, IdGlobal, IdSocketHandle;

type
  TForm1 = class(TForm)
    idsntp1: TIdSNTP;
    btn1: TButton;
    mmo1: TMemo;
    idchrgndpsrvr1: TIdChargenUDPServer;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure idchrgndpsrvr1Status(ASender: TObject;
      const AStatus: TIdStatus; const AStatusText: string);
    procedure idchrgndpsrvr1UDPRead(AThread: TIdUDPListenerThread;
      AData: TIdBytes; ABinding: TIdSocketHandle);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function GetTimeInMilliSeconds(theTime: TDateTime): Int64;
var
  Hour, Min, Sec, MSec: Word;
begin
  DecodeTime(theTime, Hour, Min, Sec, MSec);

  Result := (Hour * 3600000) + (Min * 60000) + (Sec * 1000) + MSec;
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

procedure TForm1.btn1Click(Sender: TObject);
var
  tx, dr1: TDateTime;
begin
  try
    with idsntp1 do
    begin
      Active := True;
      tx := DateTime;
      dr1 := AdjustmentTime;
      if tx > 0 then
        LogData(mmo1, 'TX = ' + FormatDateTime('dd-mm-yyyy hh:nn:ss.zzz', tx))
      else
        LogData(mmo1, 'TX = ERROR');

      //if dr1 >= 0 then
      LogData(mmo1, 'ADJ = ' + IntToStr(GetTimeInMilliSeconds(dr1)) + ' -- ' + FormatDateTime('dd-mm-yyyy hh:nn:ss.zzz', dr1));
//      else
//        LogData(mmo1, 'ADJ = ERROR');

      if GetTimeInMilliSeconds(dr1) > 1000 then
      begin
        if SyncTime then
          LogData(mmo1, 'SYNCH = OK')
        else
          LogData(mmo1, 'SYNCH = ERROR');
      end;

    end;
  except
    on e: Exception do
    begin
      LogData(mmo1, 'ERROR : ' + e.Message);
    end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  idchrgndpsrvr1.Active := True;
end;

procedure TForm1.idchrgndpsrvr1Status(ASender: TObject;
  const AStatus: TIdStatus; const AStatusText: string);
begin
  LogData(mmo1, 'CHARGEN = ' + AStatusText);
end;

procedure TForm1.idchrgndpsrvr1UDPRead(AThread: TIdUDPListenerThread;
  AData: TIdBytes; ABinding: TIdSocketHandle);
begin
  try
     LogData(mmo1,BytesToString(AData));
  except

  end;
end;

end.

