unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl13: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    cbb1: TComboBox;
    dbgrd1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    cbb2: TComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  id: string;
implementation

{$R *.dfm}

procedure TForm4.bersih;
begin
 edt1.Clear;
 edt2.Clear;
 cbb1.Text:='--pilih jenis poin --';
 cbb2.Text:='--pilih status --';
end;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
 bersih;
 BitBtn1.Enabled:= False;
 BitBtn2.Enabled:= True;
 BitBtn3.Enabled:= False;
 BitBtn4.Enabled:= False;
 BitBtn5.Enabled:= True;
  edt1.Enabled:=True;
  edt2.Enabled:=True;
  cbb1.Enabled:=True;
  cbb2.Enabled:=True;
end;

procedure TForm4.posisiawal;
begin
  BitBtn1.Enabled:= True;
  BitBtn2.Enabled:= False;
  BitBtn3.Enabled:= False;
  BitBtn4.Enabled:= False;
  BitBtn5.Enabled:= False;

  edt1.Enabled:= False;
  edt2.Enabled:= False;
  cbb1.Enabled:= False;
  cbb2.Enabled:= False;
end;

procedure TForm4.BitBtn5Click(Sender: TObject);
begin
bersih;
posisiawal;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
      // simpan
if (edt1.Text= '')or(edt2.Text='')or (cbb1.Text='')or (cbb2.Text='') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (ZQuery1.Locate('nama_poin',edt1.Text,[])) or (ZQuery1.Locate('bobot',edt2.Text,[])) then
begin
ShowMessage('DATA SISWA SUDAH DIGUNAKAN!');
end else
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into poin values(null,"'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'","'+cbb2.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from poin');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');

end;

end;

procedure TForm4.BitBtn3Click(Sender: TObject);
begin
if (edt1.Text= '')or(edt2.Text='')or (cbb1.Text='') or (cbb2.Text='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (edt1.Text = ZQuery1.Fields[1].AsString) and(edt2.Text = ZQuery1.Fields[2].AsString) and (cbb1.Text = ZQuery1.Fields[3].AsString) and (cbb2.Text = ZQuery1.Fields[3].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin

id:=dbgrd1.DataSource.DataSet.FieldByName('id_poin').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update poin set nama_poin="'+edt1.Text+'",bobot="'+edt2.Text+'",jenis="'+cbb1.Text+'",status="'+cbb2.Text+'"where id_poin="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from poin');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIUPDATE!');
posisiawal;
bersih;
end;
end;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
begin
  BitBtn1.Enabled:= False;
BitBtn2.Enabled:= False;
BitBtn3.Enabled:= True;
BitBtn4.Enabled:= True;
BitBtn5.Enabled:= True;

  edt1.Text:=ZQuery1.FieldList[1].AsString;
  edt2.Text:=ZQuery1.FieldList[2].AsString;
  cbb1.Text:=ZQuery1.FieldList[3].AsString;
  cbb2.Text:=ZQuery1.FieldList[4].AsString;

  edt1.Enabled:= True;
  edt2.Enabled:= True;
  cbb1.Enabled:= True;
  cbb2.Enabled:= True;
end;

procedure TForm4.BitBtn4Click(Sender: TObject);
begin
    if MessageDlg('Apakah yakin menghapus data ini?',mtWarning,[mbYes,mbNo],0)= mryes
  then
  begin
  id:=dbgrd1.DataSource.DataSet.FieldByName('id_poin').AsString;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from poin where id_poin="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from poin');
  ZQuery1.Open;
  posisiawal;
  end else
  begin
    ShowMessage('Data Batal Dihapus');
    posisiawal;
  end;
end;

end.
