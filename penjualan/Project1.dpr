program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in '..\..\..\..\..\Users\User\Downloads\Unit4.pas' {Form4},
  Unit5 in '..\..\..\..\..\Users\User\Downloads\Unit5.pas' {DataModule5: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TDataModule5, DataModule5);
  Application.Run;
end.