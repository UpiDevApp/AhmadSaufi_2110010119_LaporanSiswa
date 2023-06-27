unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    lbl7: TLabel;
    dbgrd1: TDBGrid;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    cbb1: TComboBox;
    cbb2: TComboBox;
    edt7: TEdit;
    BitBtn: TBitBtn;
    procedure posisiawal;
    procedure bersih;
    procedure BitBtn1Click(Sender: TObject);
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
  Form6: TForm6;
  id: string;

implementation

{$R *.dfm}

procedure TForm6.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  edt6.Clear;
  edt7.Clear;
  cbb2.Text:='--pilih Status ---';
  cbb1.Text:='--pilih jenis kelamain--';
end;

procedure TForm6.posisiawal;
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
  edt6.Enabled:= False;
  edt7.Enabled:= False;
  cbb1.Enabled:= False;
  cbb2.Enabled:= False;
end;

procedure TForm6.BitBtn1Click(Sender: TObject);
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
  cbb1.Enabled:=True;
  cbb2.Enabled:=True;
end;

procedure TForm6.BitBtn5Click(Sender: TObject);
begin
bersih;
posisiawal;
end;

procedure TForm6.BitBtn2Click(Sender: TObject);
begin
  // simpan
if (edt1.Text= '')or(edt2.Text='')or(edt3.Text= '')or(edt4.Text='')or(edt5.Text='') or (edt6.Text='') or (cbb1.Text='') or (edt7.Text='') or(cbb2.Text='') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (ZQuery1.Locate('nik',edt1.Text,[])) or (ZQuery1.Locate('nama',edt2.Text,[])) then
begin
ShowMessage('DATA SISWA SUDAH DIGUNAKAN!');

end else
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into ortu values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+cbb1.Text+'","'+edt7.Text+'","'+cbb2.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from ortu');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');

end;
end;

procedure TForm6.BitBtn3Click(Sender: TObject);
begin
   if (edt1.Text= '')or(edt2.Text='')or(edt4.Text='')or (edt5.Text='') or (edt6.Text='') or (cbb1.Text='') or (edt7.Text='')or (cbb2.Text='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (edt1.Text = ZQuery1.Fields[1].AsString) and(edt2.Text = ZQuery1.Fields[2].AsString) and (edt3.Text = ZQuery1.Fields[3].AsString) and (edt4.Text = ZQuery1.Fields[4].AsString) and (edt5.Text = ZQuery1.Fields[5].AsString)  and (edt6.Text = ZQuery1.Fields[6].AsString)  and (cbb1.Text = ZQuery1.Fields[7].AsString) and (edt7.Text = ZQuery1.Fields[7].AsString) and (cbb2.Text = ZQuery1.Fields[8].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin

id:=dbgrd1.DataSource.DataSet.FieldByName('id_ortu').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update ortu set nik="'+edt1.Text+'",nama="'+edt2.Text+'",pendidikan="'+edt3.Text+'",pekerjaan="'+edt4.Text+'",telp="'+edt5.Text+'",alamat="'+edt6.Text+'",jenis_kelamin="'+cbb1.Text+'",alamat="'+edt7.Text+'",status="'+cbb2.Text+'"where id_ortu="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from ortu');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIUPDATE!');
posisiawal;
bersih;
end;
end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
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
  edt6.Text:=ZQuery1.FieldList[6].AsString;
  cbb1.Text:=ZQuery1.FieldList[7].AsString;
  edt7.Text:=ZQuery1.FieldList[8].AsString;
  cbb2.Text:=ZQuery1.FieldList[9].AsString;

  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:= True;
  edt5.Enabled:= True;
  edt6.Enabled:= True;
  cbb1.Enabled:= True;
  edt7.Enabled:= True;
  cbb2.Enabled:= True;
end;

procedure TForm6.BitBtn4Click(Sender: TObject);
begin
if MessageDlg('Apakah yakin menghapus data ini?',mtWarning,[mbYes,mbNo],0)= mryes
  then
  begin
  id:=dbgrd1.DataSource.DataSet.FieldByName('id_ortu').AsString;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from ortu where id_ortu="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from ortu');
  ZQuery1.Open;
  posisiawal;
  end else
  begin
    ShowMessage('Data Batal Dihapus');
    posisiawal;
  end;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
posisiawal;
end;

end.
