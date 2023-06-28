unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl13: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt4: TEdit;
    lbl5: TLabel;
    edt5: TEdit;
    lbl6: TLabel;
    edt6: TEdit;
    lbl7: TLabel;
    edt7: TEdit;
    lbl8: TLabel;
    edt8: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    dbgrd1: TDBGrid;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    cbb1: TComboBox;
    BitBtn: TBitBtn;
    frxdatawali: TfrxDBDataset;
    frxrprt1: TfrxReport;
    procedure BitBtn1Click(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  id: string;

implementation

{$R *.dfm}

procedure TForm3.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt4.Clear;
  edt5.Clear;
  edt6.Clear;
  edt7.Clear;
  edt8.Clear;
  cbb1.Text:='--pilih jenis kelamain--';
end;

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
bersih;
 BitBtn1.Enabled:= False;
 BitBtn2.Enabled:= True;
 BitBtn3.Enabled:= False;
 BitBtn4.Enabled:= False;
 BitBtn5.Enabled:= True;
  edt1.Enabled:=True;
  edt2.Enabled:=True;
  edt4.Enabled:=True;
  edt5.Enabled:=True;
  edt6.Enabled:=True;
  edt7.Enabled:=True;
  edt8.Enabled:=True;
  cbb1.Enabled:=True;
end;

procedure TForm3.posisiawal;
begin
  BitBtn1.Enabled:= True;
  BitBtn2.Enabled:= False;
  BitBtn3.Enabled:= False;
  BitBtn4.Enabled:= False;
  BitBtn5.Enabled:= False;

  edt1.Enabled:= False;
  edt2.Enabled:= False;
  edt4.Enabled:= False;
  edt5.Enabled:= False;
  cbb1.Enabled:= False;
  edt6.Enabled:= False;
  edt7.Enabled:= False;
  edt8.Enabled:= False;
end;

procedure TForm3.BitBtn5Click(Sender: TObject);
begin
 frxrprt1.showreport();
end;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
    // simpan
if (edt1.Text= '')or(edt2.Text='')or (cbb1.Text='')or (edt4.Text='')or(edt5.Text='') or (edt6.Text='') or (edt7.Text='') or (edt8.Text='') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (ZQuery1.Locate('nik',edt1.Text,[])) or (ZQuery1.Locate('nama',edt2.Text,[])) then
begin
ShowMessage('DATA SISWA SUDAH DIGUNAKAN!');

end else
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into wali_kelas values(null,"'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from wali_kelas');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');

end;

end;

procedure TForm3.BitBtn3Click(Sender: TObject);
begin
  if (edt1.Text= '')or(edt2.Text='')or (cbb1.Text='')or(edt4.Text='')or (edt5.Text='') or (edt6.Text='') or (edt7.Text='') or(edt8.Text='')
then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (edt1.Text = ZQuery1.Fields[1].AsString) and(edt2.Text = ZQuery1.Fields[2].AsString) and (cbb1.Text = ZQuery1.Fields[3].AsString) and (edt4.Text = ZQuery1.Fields[4].AsString) and (edt5.Text = ZQuery1.Fields[5].AsString)  and (edt6.Text = ZQuery1.Fields[6].AsString) and (edt7.Text = ZQuery1.Fields[7].AsString) and (edt8.Text = ZQuery1.Fields[8].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin

id:=dbgrd1.DataSource.DataSet.FieldByName('id_wali').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update wali_kelas set nik="'+edt1.Text+'",nama="'+edt2.Text+'",jenis_kelamin="'+cbb1.Text+'",pendidikan="'+edt4.Text+'",telp="'+edt5.Text+'",matpel="'+edt6.Text+'",alamat="'+edt7.Text+'",status="'+edt8.Text+'"where id_wali="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from wali_kelas');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIUPDATE!');
posisiawal;
bersih;
end;

end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
BitBtn1.Enabled:= False;
BitBtn2.Enabled:= False;
BitBtn3.Enabled:= True;
BitBtn4.Enabled:= True;
BitBtn5.Enabled:= True;

  edt1.Text:=ZQuery1.FieldList[1].AsString;
  edt2.Text:=ZQuery1.FieldList[2].AsString;
  cbb1.Text:=ZQuery1.FieldList[3].AsString;
  edt4.Text:=ZQuery1.FieldList[4].AsString;
  edt5.Text:=ZQuery1.FieldList[5].AsString;
  edt6.Text:=ZQuery1.FieldList[6].AsString;
  edt7.Text:=ZQuery1.FieldList[7].AsString;
  edt8.Text:=ZQuery1.FieldList[8].AsString;

  edt1.Enabled:= True;
  edt2.Enabled:= True;
  cbb1.Enabled:= True;
  edt4.Enabled:= True;
  edt5.Enabled:= True;
  edt6.Enabled:= True;
  edt7.Enabled:= True;
  edt8.Enabled:= True;
end;

procedure TForm3.BitBtn4Click(Sender: TObject);
begin
    if MessageDlg('Apakah yakin menghapus data ini?',mtWarning,[mbYes,mbNo],0)= mryes
  then
  begin
  id:=dbgrd1.DataSource.DataSet.FieldByName('id_wali').AsString;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from wali_kelas where id_wali="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from wali_kelas');
  ZQuery1.Open;
  posisiawal;
  end else
  begin
    ShowMessage('Data Batal Dihapus');
    posisiawal;
  end;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
posisiawal;
end;

end.
