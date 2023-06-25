unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, DBGrids, Buttons, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    dtp1: TDateTimePicker;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    edt9: TEdit;
    edt10: TEdit;
    lbl5: TLabel;
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
  Form5: TForm5;

implementation

{$R *.dfm}

end.
