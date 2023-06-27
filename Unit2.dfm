object Form2: TForm2
  Left = 223
  Top = 157
  Width = 608
  Height = 448
  Caption = 'TABEL KELAS'
  Color = clAqua
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 40
    Top = 24
    Width = 49
    Height = 18
    Caption = 'Nama :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 40
    Top = 56
    Width = 60
    Height = 18
    Caption = 'Jurusan :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 128
    Top = 24
    Width = 200
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 248
    Width = 545
    Height = 145
    DataSource = ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object BitBtn: TBitBtn
    Left = 32
    Top = 152
    Width = 90
    Height = 57
    Caption = 'BARU'
    TabOrder = 2
  end
  object BitBtn51: TBitBtn
    Left = 144
    Top = 152
    Width = 90
    Height = 57
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = BitBtn51Click
  end
  object BitBtn52: TBitBtn
    Left = 248
    Top = 152
    Width = 90
    Height = 57
    Caption = 'EDIT'
    TabOrder = 4
  end
  object BitBtn53: TBitBtn
    Left = 360
    Top = 152
    Width = 90
    Height = 57
    Caption = 'HAPUS'
    TabOrder = 5
  end
  object BitBtn54: TBitBtn
    Left = 466
    Top = 152
    Width = 90
    Height = 57
    Caption = 'BATAL'
    TabOrder = 6
  end
  object cbb1: TComboBox
    Left = 128
    Top = 56
    Width = 201
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Text = 'cbb1'
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'laporan_siswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\ASUS\Desktop\tugas akhir delphi7\libmysql.dll'
    Left = 400
    Top = 24
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kelas')
    Params = <>
    Left = 400
    Top = 80
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 464
    Top = 24
  end
end
