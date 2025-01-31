object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Conex'#227'o com Banco de Dados SQL Server'
  ClientHeight = 188
  ClientWidth = 448
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 425
    Height = 169
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Width = 150
        Visible = True
      end>
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=codedelphi'
      'Server=NOTE-LENOVO\SQLEXPRESS'
      'User_Name=NOTE-LENOVO\gisel'
      'DriverID=MSSQL'
      'Trusted_Connection=True'
      'OSAuthent=Yes')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 160
    Top = 24
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM usuarios')
    Left = 40
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 104
    Top = 88
  end
end
