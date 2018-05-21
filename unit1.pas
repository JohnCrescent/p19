unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  image1.canvas.Brush.color:=clwhite;
  image1.Canvas.fillrect(image1.clientrect);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  timer1.enabled:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  timer1.enabled:=false
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  image1.Canvas.moveto(0,0);
  image1.Canvas.lineto(random(image1.width),random(image1.height));
end;

end.

