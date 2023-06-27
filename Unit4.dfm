object Form4: TForm4
  Left = 758
  Top = 174
  Width = 928
  Height = 550
  Caption = 'TABEL POIN'
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
    Width = 80
    Height = 18
    Caption = 'Nama Poin :'
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
    Width = 41
    Height = 18
    Caption = 'Jenis :'
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
    Width = 51
    Height = 18
    Caption = 'Status :'
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
    Width = 48
    Height = 18
    Caption = 'Bobot :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 216
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
    Left = 216
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
    Left = 216
    Top = 85
    Width = 200
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'Prestasi'
      'Pelanggaran')
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 264
    Width = 857
    Height = 217
    DataSource = ds1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 176
    Width = 90
    Height = 57
    Caption = 'BARU'
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 152
    Top = 176
    Width = 90
    Height = 57
    Caption = 'SIMPAN'
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 256
    Top = 176
    Width = 90
    Height = 57
    Caption = 'EDIT'
    TabOrder = 6
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 360
    Top = 176
    Width = 90
    Height = 57
    Caption = 'HAPUS'
    TabOrder = 7
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 464
    Top = 176
    Width = 90
    Height = 57
    Caption = 'BATAL'
    TabOrder = 8
    OnClick = BitBtn5Click
  end
  object cbb2: TComboBox
    Left = 216
    Top = 120
    Width = 201
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Items.Strings = (
      'aktif'
      'tidak')
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
    Left = 472
    Top = 16
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from poin')
    Params = <>
    Left = 472
    Top = 64
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 472
    Top = 120
  end
end
