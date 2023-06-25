object Form8: TForm8
  Left = 210
  Top = 167
  Width = 928
  Height = 547
  Caption = 'TABEL USER'
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
    Left = 48
    Top = 8
    Width = 3
    Height = 13
  end
  object lbl6: TLabel
    Left = 56
    Top = 16
    Width = 77
    Height = 18
    Caption = 'Username :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 56
    Top = 48
    Width = 5
    Height = 18
    Caption = ' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 56
    Top = 80
    Width = 33
    Height = 18
    Caption = 'Level'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 57
    Top = 115
    Width = 50
    Height = 18
    Caption = 'status :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl13: TLabel
    Left = 55
    Top = 45
    Width = 71
    Height = 18
    Caption = 'Password :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 56
    Top = 152
    Width = 72
    Height = 18
    Caption = 'Created_at'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 56
    Top = 184
    Width = 99
    Height = 18
    Caption = 'Create_userid :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 56
    Top = 224
    Width = 86
    Height = 18
    Caption = 'Updated_at :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 256
    Top = 16
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
  object edt2: TEdit
    Left = 256
    Top = 48
    Width = 200
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edt4: TEdit
    Left = 256
    Top = 120
    Width = 200
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object cbb2: TComboBox
    Left = 256
    Top = 85
    Width = 200
    Height = 21
    ItemHeight = 13
    TabOrder = 3
  end
  object edt3: TEdit
    Left = 256
    Top = 152
    Width = 200
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object edt5: TEdit
    Left = 256
    Top = 184
    Width = 200
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object edt6: TEdit
    Left = 256
    Top = 224
    Width = 200
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object BitBtn: TBitBtn
    Left = 56
    Top = 264
    Width = 90
    Height = 57
    Caption = 'BARU'
    TabOrder = 7
  end
  object BitBtn51: TBitBtn
    Left = 168
    Top = 264
    Width = 90
    Height = 57
    Caption = 'SIMPAN'
    TabOrder = 8
  end
  object BitBtn52: TBitBtn
    Left = 272
    Top = 264
    Width = 90
    Height = 57
    Caption = 'EDIT'
    TabOrder = 9
  end
  object BitBtn53: TBitBtn
    Left = 376
    Top = 264
    Width = 90
    Height = 57
    Caption = 'HAPUS'
    TabOrder = 10
  end
  object BitBtn54: TBitBtn
    Left = 472
    Top = 264
    Width = 90
    Height = 57
    Caption = 'BATAL'
    TabOrder = 11
  end
  object dbgrd1: TDBGrid
    Left = 56
    Top = 336
    Width = 689
    Height = 153
    DataSource = ds1
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
    Left = 496
    Top = 16
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 560
    Top = 16
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 624
    Top = 16
  end
end
