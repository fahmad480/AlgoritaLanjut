program Project1;

uses
  Forms,
  Pixel_Biling in 'Pixel_Biling.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
