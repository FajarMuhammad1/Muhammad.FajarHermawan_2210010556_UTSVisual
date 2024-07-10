object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 133
  Width = 246
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 144
    Top = 16
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\USER\Downloads\libmysql (1).dll'
    Left = 32
    Top = 16
  end
  object ZQuery1: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 88
    Top = 16
  end
end
