object Form7: TForm7
  Left = 563
  Top = 147
  Width = 928
  Height = 550
  Caption = 'TABEL HUBUNGAN'
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
    Left = 56
    Top = 16
    Width = 60
    Height = 18
    Caption = 'Siswa id :'
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
    Width = 156
    Height = 18
    Caption = 'Status hubungan anak :'
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
    Width = 85
    Height = 18
    Caption = 'Keterangan :'
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
    Width = 54
    Height = 18
    Caption = 'Ortu id :'
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
    Width = 85
    Height = 18
    Caption = 'Status Ortu :'
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
  object cbb1: TComboBox
    Left = 256
    Top = 85
    Width = 200
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'kandung'
      'bukan kandung')
  end
  object edt3: TEdit
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
    TabOrder = 3
  end
  object cbb2: TComboBox
    Left = 256
    Top = 157
    Width = 200
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'alm'
      'hidup')
  end
  object BitBtn1: TBitBtn
    Left = 56
    Top = 192
    Width = 90
    Height = 57
    Caption = 'BARU'
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 168
    Top = 192
    Width = 90
    Height = 57
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 272
    Top = 192
    Width = 90
    Height = 57
    Caption = 'EDIT'
    TabOrder = 7
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 376
    Top = 192
    Width = 90
    Height = 57
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 488
    Top = 192
    Width = 90
    Height = 57
    Caption = 'BATAL'
    TabOrder = 9
    OnClick = BitBtn5Click
  end
  object dbgrd1: TDBGrid
    Left = 48
    Top = 272
    Width = 785
    Height = 201
    DataSource = ds1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
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
    Left = 488
    Top = 24
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from hubungan')
    Params = <>
    Left = 552
    Top = 24
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 608
    Top = 24
  end
end
