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
    Left = 736
    Top = 16
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 736
    Top = 72
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 744
    Top = 120
  end
  object frxdatauser: TfrxDBDataset
    UserName = 'frxdatauser'
    CloseDataSource = False
    DataSet = ZQuery1
    Left = 792
    Top = 16
  end
  object frxuser: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45105.633113703700000000
    ReportOptions.LastChange = 45105.639704768500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 784
    Top = 72
    Datasets = <
      item
        DataSet = frxdatauser
        DataSetName = 'frxdatauser'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo17: TfrxMemoView
          Left = 49.133890000000000000
          Top = 11.338590000000000000
          Width = 691.653990000000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Laporan Data User')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 86.929190000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 49.133890000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'username')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 128.504020000000000000
          Width = 86.929190000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'password')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 215.433210000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'level')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 294.803340000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Status')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 374.173470000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Create at')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 453.543600000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Create UserID')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 551.811380000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Update at')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 631.181510000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Upadate UserID')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 170.078850000000000000
        Width = 793.701300000000000000
        DataSet = frxdatauser
        DataSetName = 'frxdatauser'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = 49.133890000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          DataField = 'username'
          DataSet = frxdatauser
          DataSetName = 'frxdatauser'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdatauser."username"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 128.504020000000000000
          Width = 86.929190000000000000
          Height = 22.677180000000000000
          DataField = 'password'
          DataSet = frxdatauser
          DataSetName = 'frxdatauser'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdatauser."password"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 215.433210000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          DataField = 'level'
          DataSet = frxdatauser
          DataSetName = 'frxdatauser'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdatauser."level"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 294.803340000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          DataField = 'status'
          DataSet = frxdatauser
          DataSetName = 'frxdatauser'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdatauser."status"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 374.173470000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          DataField = 'create_at'
          DataSet = frxdatauser
          DataSetName = 'frxdatauser'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdatauser."create_at"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 453.543600000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          DataField = 'create_userid'
          DataSet = frxdatauser
          DataSetName = 'frxdatauser'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdatauser."create_userid"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 551.811380000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          DataField = 'create_userid'
          DataSet = frxdatauser
          DataSetName = 'frxdatauser'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdatauser."create_userid"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 631.181510000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          DataField = 'update_userid'
          DataSet = frxdatauser
          DataSetName = 'frxdatauser'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdatauser."update_userid"]')
          ParentFont = False
        end
      end
    end
  end
end
