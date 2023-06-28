unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection, frxClass, frxDBSet;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    lbl3: TLabel;
    edt3: TEdit;
    lbl4: TLabel;
    edt4: TEdit;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    edt5: TEdit;
    lbl10: TLabel;
    edt6: TEdit;
    edt7: TEdit;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl7: TLabel;
    cbb1: TComboBox;
    dtp1: TDateTimePicker;
    dbgrd1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    lbl11: TLabel;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    edt8: TEdit;
    frxdatasiswa: TfrxDBDataset;
    cbb2: TComboBox;
    BitBtn: TBitBtn;
    frxReport1: TfrxReport;
    procedure bersih;
    procedure posisiawal;

    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  id: string;

implementation

{$R *.dfm}

procedure TForm1.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  edt6.Clear;
  edt7.Clear;
  edt8.Clear;
  cbb2.Text:='--pilih Status ---';
  cbb1.Text:='--pilih jenis kelamain--';
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
 bersih;
 BitBtn1.Enabled:= False;
 BitBtn2.Enabled:= True;
 BitBtn3.Enabled:= False;
 BitBtn4.Enabled:= False;
 BitBtn5.Enabled:= True;
  edt1.Enabled:=True;
  edt2.Enabled:=True;
  edt3.Enabled:=True;
  edt4.Enabled:=True;
  edt5.Enabled:=True;
  edt6.Enabled:=True;
  edt7.Enabled:=True;
  edt8.Enabled:=True;
  cbb1.Enabled:=True;
  cbb2.Enabled:=True;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  // simpan
if (edt1.Text= '')or(edt2.Text='')or(edt3.Text= '')or(edt4.Text='')or(edt5.Text='') or (cbb1.Text='') or (edt6.Text='') or (edt7.Text='') or (edt8.Text='') or(cbb2.Text='') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (ZQuery1.Locate('nis',edt1.Text,[])) or (ZQuery1.Locate('nisn',edt2.Text,[])) or (ZQuery1.Locate('nama_siswa',edt3.Text,[])) or(ZQuery1.Locate('nik',edt4.Text,[])) then
begin
ShowMessage('DATA SISWA SUDAH DIGUNAKAN!');

end else
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into siswa values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'","'+cbb1.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'","'+cbb2.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from siswa');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');

end;

end;

procedure TForm1.posisiawal;
begin
  BitBtn1.Enabled:= True;
  BitBtn2.Enabled:= False;
  BitBtn3.Enabled:= False;
  BitBtn4.Enabled:= False;
  BitBtn5.Enabled:= False;

  edt1.Enabled:= False;
  edt2.Enabled:= False;
  edt3.Enabled:= False;
  edt4.Enabled:= False;
  edt5.Enabled:= False;
  dtp1.Enabled:= False;
  cbb1.Enabled:= False;
  edt6.Enabled:= False;
  edt7.Enabled:= False;
  edt8.Enabled:= False;
  cbb1.Enabled:= False;
  cbb2.Enabled:= False;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
if (edt1.Text= '')or(edt2.Text='')or(edt3.Text= '')or(edt4.Text='')or (edt5.Text='') or (cbb1.Text='') or (edt6.Text='') or (edt7.Text='') or(edt8.Text='') or(cbb2.Text='')
then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (edt1.Text = ZQuery1.Fields[1].AsString) and(edt2.Text = ZQuery1.Fields[2].AsString) and(edt3.Text = ZQuery1.Fields[3].AsString) and (edt4.Text = ZQuery1.Fields[4].AsString) and (edt5.Text = ZQuery1.Fields[5].AsString) and (cbb1.Text = ZQuery1.Fields[7].AsString) and (edt6.Text = ZQuery1.Fields[8].AsString) and (edt7.Text = ZQuery1.Fields[9].AsString) and (edt8.Text = ZQuery1.Fields[10].AsString) and (cbb2.Text = ZQuery1.Fields[11].AsString)
then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin

id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update siswa set nis="'+edt1.Text+'",nisn="'+edt2.Text+'",nama_siswa="'+edt3.Text+'",nik="'+edt4.Text+'",tempat_lahir="'+edt5.Text+'",tanggal_lahir="'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'",jenis_kelamin="'+cbb1.Text+'",alamat="'+edt6.Text+'",telp="'+edt7.Text+'",hp="'+edt8.Text+'",status="'+cbb2.Text+'" where id_siswa="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from siswa');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIUPDATE!');
posisiawal;
bersih;
end;
end;
procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
BitBtn1.Enabled:= False;
BitBtn2.Enabled:= False;
BitBtn3.Enabled:= True;
BitBtn4.Enabled:= True;
BitBtn5.Enabled:= True;
  edt1.Text:=ZQuery1.FieldList[1].AsString;
  edt2.Text:=ZQuery1.FieldList[2].AsString;
  edt3.Text:=ZQuery1.FieldList[3].AsString;
  edt4.Text:=ZQuery1.FieldList[4].AsString;
  edt5.Text:=ZQuery1.FieldList[5].AsString;
  dtp1.Date:=ZQuery1.FieldList[6].AsDateTime;
  cbb1.Text:=ZQuery1.FieldList[7].AsString;
  edt6.Text:=ZQuery1.FieldList[8].AsString;
  edt7.Text:=ZQuery1.FieldList[9].AsString;
  edt8.Text:=ZQuery1.FieldList[10].AsString;
  cbb2.Text:=ZQuery1.FieldList[11].AsString;
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:= True;
  edt5.Enabled:= True;
  cbb1.Enabled:= True;
  edt6.Enabled:= True;
  edt7.Enabled:= True;
  edt8.Enabled:= True;
  cbb2.Enabled:= True;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Apakah yakin menghapus data ini?',mtWarning,[mbYes,mbNo],0)= mryes
  then
  begin
  id:=dbgrd1.DataSource.DataSet.FieldByName('id_siswa').AsString;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from siswa where id_siswa="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from siswa');
  ZQuery1.Open;
  posisiawal;
  end else
  begin
    ShowMessage('Data Batal Dihapus');
    posisiawal;
  end;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
 frxReport1.showreport();
end;

procedure TForm1.FormShow(Sender: TObject);
begin
 posisiawal;
end;

end.
