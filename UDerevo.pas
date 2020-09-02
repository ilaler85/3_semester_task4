unit UDerevo;

interface
  uses Math, SysUtils, Windows,Dialogs;
  type
  TListik = ^TVetka;
  TVetka = record
            int: Integer;
            listik1: TListik;
            listik2 : TListik;
           end;
 // procedure vivod (var Derevo: TListik; n :Integer; var Derev:TMemo);
  function sozdanieDereva (Derevo:TListik; n: Integer;var maxN:Integer):TListik;
  procedure UstroyDestroy (var Derevo:TListik);

implementation

function sozdanieDereva (Derevo:TListik; n: Integer;var maxN:Integer):TListik;
//создание бинарного дерева
var k:string;
begin
  if InputQuery('Введите дерево', IntToStr(n)+' уровень', k) then
  begin
    New(Derevo);
    Derevo^.int:=Abs(StrToInt(k));
    Derevo^.listik1:=sozdanieDereva (Derevo, n+1, maxN);
    Derevo^.listik2:=sozdanieDereva (Derevo, n+1, maxN);
    Result:=Derevo;
    if N>Maxn then
     maxN:=n;
  end
  else
    Result:=nil;
  {New(Derevo);
  Derevo^.int:=k;
  if  2*k<=n then
    Derevo^.listik1:=sozdanieDereva(Derevo, n, 2*k)
  else
    Derevo^.listik1:=nil;
  if 2*k+1<=n then
    Derevo^.listik2:=sozdanieDereva(Derevo, n, 2*k+1)
  else
    Derevo^.listik2:=nil;  }
end;

procedure UstroyDestroy (var Derevo:TListik);
//уничтожение бинарного дерева
begin
  if Derevo^.listik1<>nil then
  begin
    UstroyDestroy(Derevo^.listik1);
    if Derevo^.listik2 <> nil then
      UstroyDestroy(Derevo^.listik2);
  end;
  Dispose(Derevo);
end;
end.
