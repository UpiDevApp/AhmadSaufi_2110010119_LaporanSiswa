unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm7 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl13: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    cbb1: TComboBox;
    lbl5: TLabel;
    edt3: TEdit;
    cbb2: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    dbgrd1: TDBGrid;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    procedure bersih;
    procedure posisiawal;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.bersih;
begin
   edt1.Clear;
   edt2.Clear;
   cbb1.Text:='--pilih status hubungan --';
   edt3.Clear;
   cbb2.Text:='--pilih status ortu --';
end;

procedure TForm7.posisiawal;
begin
  BitBtn1.Enabled:= True;
  BitBtn2.Enabled:= False;
  BitBtn3.Enabled:= False;
  BitBtn4.Enabled:= False;
  BitBtn5.Enabled:= False;

  edt1.Enabled:= False;
  edt2.Enabled:= False;
  cbb1.Enabled:= False;
  edt3.Enabled:= False;
  cbb2.Enabled:= False;
end;

procedure TForm7.BitBtn1Click(Sender: TObject);
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
  cbb2.Enabled:=True;
end;

procedure TForm7.BitBtn5Click(Sender: TObject);
begin
bersih;
posisiawal;
end;

procedure TForm7.BitBtn2Click(Sender: TObject);
begin
       // simpan
if (edt1.Text= '')or(edt2.Text='')or (cbb1.Text='')or (edt3.Text='')or (cbb2.Text='') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (ZQuery1.Locate('id_siswa',edt1.Text,[])) or (ZQuery1.Locate('id_ortu',edt2.Text,[])) then
begin
ShowMessage('DATA SISWA SUDAH DIGUNAKAN!');
end else
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into hubungan values(null,"'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'","'+edt3.Text+'","'+cbb2.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from hubungan');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');

end;
end;

end.
