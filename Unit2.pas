unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    dbgrd1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    cbb1: TComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure BitBtn3Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  id: string;

implementation

{$R *.dfm}

procedure TForm2.BitBtn2Click(Sender: TObject);
begin

 // simpan
if (edt1.Text= '')or (cbb1.Text='') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (ZQuery1.Locate('nama',edt1.Text,[])) then
begin
ShowMessage('DATA SISWA SUDAH DIGUNAKAN!');
end else
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into kelas values(null,"'+edt1.Text+'","'+cbb1.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from kelas');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');

end;
end;

procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
BitBtn1.Enabled:= False;
BitBtn2.Enabled:= False;
BitBtn3.Enabled:= True;
BitBtn4.Enabled:= True;
BitBtn5.Enabled:= True;
  edt1.Text:=ZQuery1.FieldList[1].AsString;
  cbb1.Text:=ZQuery1.FieldList[2].AsString;
  edt1.Enabled:=True;
  cbb1.Enabled:= True;
end;

procedure TForm2.BitBtn3Click(Sender: TObject);
begin
//edit
if (edt1.Text= '')or (cbb1.Text='')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (edt1.Text = ZQuery1.Fields[1].AsString) and (cbb1.Text = ZQuery1.Fields[2].AsString)
then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_kelas').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update kelas set nama="'+edt1.Text+'",jurusan="'+cbb1.Text+'"where id_kelas="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from kelas');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIUPDATE!');
posisiawal;
bersih;
end;
end;

procedure TForm2.posisiawal;
begin
  BitBtn1.Enabled:= True;
  BitBtn2.Enabled:= False;
  BitBtn3.Enabled:= False;
  BitBtn4.Enabled:= False;
  BitBtn5.Enabled:= False;

  edt1.Enabled:= False;
  cbb1.Enabled:= False;
end;

procedure TForm2.bersih;
begin
  edt1.Clear;
  cbb1.Text:='--pilih jurusan --';
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
  bersih;
 BitBtn1.Enabled:= False;
 BitBtn2.Enabled:= True;
 BitBtn3.Enabled:= False;
 BitBtn4.Enabled:= False;
 BitBtn5.Enabled:= True;
  edt1.Enabled:=True;
  cbb1.Enabled:=True;
end;

procedure TForm2.BitBtn4Click(Sender: TObject);
begin
   if MessageDlg('Apakah yakin menghapus data ini?',mtWarning,[mbYes,mbNo],0)= mryes
  then
  begin
  id:=dbgrd1.DataSource.DataSet.FieldByName('id_kelas').AsString;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from kelas where id_kelas="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from kelas');
  ZQuery1.Open;
  posisiawal;
  end else
  begin
    ShowMessage('Data Batal Dihapus');
    posisiawal;
  end;
end;

procedure TForm2.BitBtn5Click(Sender: TObject);
begin
   posisiawal;
  bersih;
end;

end.
