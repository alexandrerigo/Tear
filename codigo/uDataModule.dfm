object DModule: TDModule
  OldCreateOrder = False
  Height = 375
  Width = 424
  object qAux: TFDQuery
    Connection = FDConnection
    Left = 48
    Top = 152
  end
  object FModulo: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM MODULO')
    Left = 48
    Top = 88
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    DriverID = 'MySQL'
    VendorLib = 'libmysql.dll'
    Left = 144
    Top = 40
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 264
    Top = 40
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=balay'
      'User_Name=root'
      'Password=root'
      'DriverID=MySQL')
    LoginPrompt = False
    BeforeConnect = FDConnectionBeforeConnect
    Left = 184
    Top = 152
  end
end
