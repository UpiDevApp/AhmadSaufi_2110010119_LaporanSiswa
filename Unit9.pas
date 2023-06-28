unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm9 = class(TForm)
    BitBtn: TBitBtn;
    BitBtn51: TBitBtn;
    BitBtn52: TBitBtn;
    BitBtn53: TBitBtn;
    BitBtn54: TBitBtn;
    BitBtn55: TBitBtn;
    BitBtn56: TBitBtn;
    BitBtn57: TBitBtn;
    procedure BitBtnClick(Sender: TObject);
    procedure BitBtn51Click(Sender: TObject);
    procedure BitBtn52Click(Sender: TObject);
    procedure BitBtn53Click(Sender: TObject);
    procedure BitBtn54Click(Sender: TObject);
    procedure BitBtn55Click(Sender: TObject);
    procedure BitBtn56Click(Sender: TObject);
    procedure BitBtn57Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8;

{$R *.dfm}

procedure TForm9.BitBtnClick(Sender: TObject);
begin
  form1.showmodal;
end;

procedure TForm9.BitBtn51Click(Sender: TObject);
begin
    form2.showmodal;
end;

procedure TForm9.BitBtn52Click(Sender: TObject);
begin
form3.showmodal;
end;

procedure TForm9.BitBtn53Click(Sender: TObject);
begin
form4.showmodal;
end;

procedure TForm9.BitBtn54Click(Sender: TObject);
begin
form5.showmodal;
end;

procedure TForm9.BitBtn55Click(Sender: TObject);
begin
form6.showmodal;
end;

procedure TForm9.BitBtn56Click(Sender: TObject);
begin
  form7.showmodal;
end;

procedure TForm9.BitBtn57Click(Sender: TObject);
begin
form8.showmodal;
end;

end.
