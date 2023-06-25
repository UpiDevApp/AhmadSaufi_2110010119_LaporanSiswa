unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

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
    edt9: TEdit;
    lbl10: TLabel;
    edt10: TEdit;
    edt11: TEdit;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl7: TLabel;
    cbb1: TComboBox;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    dbgrd1: TDBGrid;
    BitBtn: TBitBtn;
    BitBtn51: TBitBtn;
    BitBtn52: TBitBtn;
    BitBtn53: TBitBtn;
    BitBtn54: TBitBtn;
    lbl11: TLabel;
    edt5: TEdit;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ds1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
