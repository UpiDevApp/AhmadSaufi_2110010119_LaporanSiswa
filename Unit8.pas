unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, ComCtrls;

type
  TForm8 = class(TForm)
    lbl1: TLabel;
    lbl6: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl13: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    lbl5: TLabel;
    cbb1: TComboBox;
    edt3: TEdit;
    lbl7: TLabel;
    lbl8: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    dbgrd1: TDBGrid;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    lbl9: TLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    dtp3: TDateTimePicker;
    dtp4: TDateTimePicker;
    procedure bersih;
    procedure posisiawal;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
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
  Form8: TForm8;
  id: string;

implementation

{$R *.dfm}

procedure TForm8.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  cbb1.Text:='--pilih Level ---';
end;

procedure TForm8.posisiawal;
begin
   BitBtn1.Enabled:= True;
  BitBtn2.Enabled:= False;
  BitBtn3.Enabled:= False;
  BitBtn4.Enabled:= False;
  BitBtn5.Enabled:= False;

  edt1.Enabled:= False;
  edt2.Enabled:= False;
  edt3.Enabled:= False;
  cbb1.Enabled:= False;
  dtp1.Enabled:= False;
  dtp2.Enabled:= False;
  dtp3.Enabled:= False;
  dtp4.Enabled:= False;

end;

procedure TForm8.BitBtn5Click(Sender: TObject);
begin
bersih;
posisiawal;
end;

procedure TForm8.BitBtn1Click(Sender: TObject);
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
  edt3.Enabled:=True;
  dtp1.Enabled:=True;
  dtp2.Enabled:=True;
  dtp3.Enabled:=True;
  dtp4.Enabled:=True;
end;

procedure TForm8.BitBtn2Click(Sender: TObject);
begin
     // simpan
if (edt1.Text= '')or(edt2.Text='')or(cbb1.Text='')or(edt3.Text='') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (ZQuery1.Locate('username',edt1.Text,[])) then
begin
ShowMessage('DATA SISWA SUDAH DIGUNAKAN!');

end else
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into user values(null,"'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'","'+edt3.Text+'","'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'","'+FormatDateTime('yyyy-mm-dd',dtp2.Date)+'","'+FormatDateTime('yyyy-mm-dd',dtp3.Date)+'","'+FormatDateTime('yyyy-mm-dd',dtp4.Date)+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from user');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');

end;

end;

procedure TForm8.BitBtn3Click(Sender: TObject);
begin
  if (edt1.Text= '')or(edt2.Text='')or(cbb1.Text='')or(edt3.Text='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (edt1.Text = ZQuery1.Fields[1].AsString) and(edt2.Text = ZQuery1.Fields[2].AsString) and(cbb1.Text = ZQuery1.Fields[3].AsString) and (edt3.Text = ZQuery1.Fields[4].AsString) 
then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin

id:=dbgrd1.DataSource.DataSet.FieldByName('id_user').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update user set username="'+edt1.Text+'",password="'+edt2.Text+'",level="'+cbb1.Text+'",status="'+edt3.Text+'",create_at="'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'",create_userid="'+FormatDateTime('yyyy-mm-dd',dtp2.Date)+'",update_at="'+FormatDateTime('yyyy-mm-dd',dtp3.Date)+'",update_userid="'+FormatDateTime('yyyy-mm-dd',dtp4.Date)+'" where id_user="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from user');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIUPDATE!');
posisiawal;
bersih;
end;
end;

procedure TForm8.dbgrd1CellClick(Column: TColumn);
begin
BitBtn1.Enabled:= False;
BitBtn2.Enabled:= False;
BitBtn3.Enabled:= True;
BitBtn4.Enabled:= True;
BitBtn5.Enabled:= True;
  edt1.Text:=ZQuery1.FieldList[1].AsString;
  edt2.Text:=ZQuery1.FieldList[2].AsString;
  cbb1.Text:=ZQuery1.FieldList[3].AsString;
  edt3.Text:=ZQuery1.FieldList[4].AsString;
  dtp1.Date:=ZQuery1.FieldList[5].AsDateTime;
  dtp2.Date:=ZQuery1.FieldList[6].AsDateTime;
  dtp3.Date:=ZQuery1.FieldList[7].AsDateTime;
  dtp4.Date:=ZQuery1.FieldList[8].AsDateTime;
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  cbb1.Enabled:= True;
  edt3.Enabled:= True;
  dtp1.Enabled:= True;
  dtp2.Enabled:= True;
  dtp3.Enabled:= True;
  dtp4.Enabled:= True;
end;

procedure TForm8.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Apakah yakin menghapus data ini?',mtWarning,[mbYes,mbNo],0)= mryes
  then
  begin
  id:=dbgrd1.DataSource.DataSet.FieldByName('id_user').AsString;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from user where id_user="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from user');
  ZQuery1.Open;
  posisiawal;
  end else
  begin
    ShowMessage('Data Batal Dihapus');
    posisiawal;
  end;
end;

end.
