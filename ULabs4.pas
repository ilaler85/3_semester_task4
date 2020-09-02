unit ULabs4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math, UDerevo;

type
  TForm1 = class(TForm)
    Derev: TMemo;
    Vvod: TEdit;
    Run: TButton;
    lbl: TLabel;
    procedure RunClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  procedure kolichestvostrok (n :Integer; var Derev:TMemo);
  procedure vivod(var Derevo: TListik; k,k2 :Integer; var Derev:TMemo);
var
  Form1: TForm1;
  Derevo: TListik;
  maxN:Integer;
implementation

{$R *.dfm}
procedure kolichestvostrok (n :Integer; var Derev:TMemo);
var i:Integer;
begin
  for i:=0 to Trunc(Exp((n-1)*ln(2))*2)-1 do
  begin
    Derev.Lines.Add('');
  end;
end;

procedure vivod(var Derevo: TListik; k,k2 :Integer; var Derev:TMemo);
var i:integer;
begin
  for i:=1 to Trunc(log2(derevo^.int)) do
    Derev.Lines[k-1]:=Derev.Lines[k-1]+'      ';
  Derev.Lines[k-1]:=Derev.Lines[k-1]+IntToStr(Derevo^.int);
  //tmp:=Trunc(Exp((Trunc(Log2(k))-1)*ln(2)));
  k2:= k2 div 2;
  if Derevo^.listik1<>nil then
    vivod(Derevo^.listik1, k-k2,k2, Derev);
  if Derevo^.listik2<>nil then
    vivod(Derevo^.listik2, k+k2,k2, Derev);
end;

procedure TForm1.RunClick(Sender: TObject);
var n:Integer;
begin
  Derev.Lines.Clear;
  New(Derevo);
  Derevo:=sozdanieDereva(Derevo, 1, maxN);
  kolichestvostrok(maxN, Derev);
  vivod(Derevo, Trunc(Exp((n-1)*ln(2))),Trunc(Exp((n-1)*ln(2))), Derev);
  UstroyDestroy(Derevo);

end;

end.
