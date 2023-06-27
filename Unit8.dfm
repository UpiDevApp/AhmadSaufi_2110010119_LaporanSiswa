object Form8: TForm8
  Left = 208
  Top = 202
  Width = 853
  Height = 465
  Caption = 'TABEL USER'
  Color = clAqua
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
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
    Left = 416
    Top = 16
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
    Left = 416
    Top = 48
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
    Left = 416
    Top = 88
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
  object lbl9: TLabel
    Left = 416
    Top = 120
    Width = 101
    Height = 18
    Caption = 'update_userid :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 176
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
    Left = 176
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
    Left = 176
    Top = 85
    Width = 200
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5')
  end
  object edt3: TEdit
    Left = 176
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
  object BitBtn1: TBitBtn
    Left = 48
    Top = 160
    Width = 90
    Height = 57
    Caption = 'BARU'
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 168
    Top = 160
    Width = 90
    Height = 57
    Caption = 'SIMPAN'
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 280
    Top = 160
    Width = 90
    Height = 57
    Caption = 'EDIT'
    TabOrder = 6
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 392
    Top = 160
    Width = 90
    Height = 57
    Caption = 'HAPUS'
    TabOrder = 7
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 504
    Top = 160
    Width = 90
    Height = 57
    Caption = 'BATAL'
    TabOrder = 8
    OnClick = BitBtn5Click
  end
  object dbgrd1: TDBGrid
    Left = 48
    Top = 248
    Width = 753
    Height = 153
    DataSource = ds1
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object dtp1: TDateTimePicker
    Left = 536
    Top = 16
    Width = 186
    Height = 21
    Date = 45104.982391620370000000
    Time = 45104.982391620370000000
    TabOrder = 10
  end
  object dtp2: TDateTimePicker
    Left = 536
    Top = 48
    Width = 186
    Height = 21
    Date = 45104.982511064820000000
    Time = 45104.982511064820000000
    TabOrder = 11
  end
  object dtp3: TDateTimePicker
    Left = 536
    Top = 88
    Width = 186
    Height = 21
    Date = 45104.982565324080000000
    Time = 45104.982565324080000000
    TabOrder = 12
  end
  object dtp4: TDateTimePicker
    Left = 536
    Top = 120
    Width = 186
    Height = 21
    Date = 45104.982623564810000000
    Time = 45104.982623564810000000
    TabOrder = 13
  end
  object BitBtn: TBitBtn
    Left = 616
    Top = 160
    Width = 90
    Height = 57
    Caption = 'LAPORAN'
    TabOrder = 14
    OnClick = BitBtn5Click
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
    Left = 792
    Top = 72
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 768
    Top = 168
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 720
    Top = 168
  end
end
