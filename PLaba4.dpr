program PLaba4;

uses
  Forms,
  ULabs4 in 'ULabs4.pas' {Form1},
  UDerevo in 'UDerevo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
