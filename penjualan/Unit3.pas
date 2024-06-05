unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    lbl2: TLabel;
    edt2: TEdit;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
   a: string;
implementation

uses
  Unit5;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
DataModule5.zqryZkategori.SQL.Clear;
DataModule5.zqryZkategori.SQL.Add('insert into kategori value(null,'''+edt1.Text+''')');
DataModule5.zqryZkategori.ExecSQL;

DataModule5.zqryZkategori.SQL.Clear;
DataModule5.zqryZkategori.SQL.Add('select * from kategori');
DataModule5.zqryZkategori.Open;
ShowMessage('Data Berhasil Disimpan');
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
DataModule5.zqryZkategori.SQL.Clear;
DataModule5.zqryZkategori.SQL.Add('Update kategori set name="'+edt1.Text+'" where id= "'+a+'"');
DataModule5.zqryZkategori.ExecSQL;

DataModule5.zqryZkategori.SQL.Clear;
DataModule5.zqryZkategori.SQL.Add('Select * from kategori');
DataModule5.zqryZkategori.Open;
ShowMessage('Data Berhasil Di Update');
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
DataModule5.zqryZkategori.SQL.Clear;
DataModule5.zqryZkategori.SQL.Add('Delete from kategori where id= "'+a+'"');
DataModule5.zqryZkategori.ExecSQL;

DataModule5.zqryZkategori.SQL.Clear;
DataModule5.zqryZkategori.SQL.Add('Select * from kategori');
DataModule5.zqryZkategori.Open;
ShowMessage('Data Berhasil Dihapus !');
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule5.zqryZkategori.Fields[1].AsString;
a := Datamodule5.zqryZkategori.Fields[0].AsString;
end;

end.
