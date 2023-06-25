unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

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
    edt4: TEdit;
    cbb2: TComboBox;
    edt3: TEdit;
    lbl7: TLabel;
    edt5: TEdit;
    lbl8: TLabel;
    edt6: TEdit;
    BitBtn: TBitBtn;
    BitBtn51: TBitBtn;
    BitBtn52: TBitBtn;
    BitBtn53: TBitBtn;
    BitBtn54: TBitBtn;
    dbgrd1: TDBGrid;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ds1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

end.
