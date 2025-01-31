//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse código foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto não me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Phys.ODBCBase, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    FDQuery1: TFDQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  try
    FDConnection1.Connected := True; //conecta ao banco de dados codedelphi
    FDQuery1.Open; //abre a tabela usuarios que será exibida na DBGrid1
  except
    on E: Exception do //Tratamento de erro caso a conexão falhar
      ShowMessage('Erro ao conectar ao banco de dados: ' + E.Message);
  end;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FDQuery1.Close; //Fecha a tabela
  FDConnection1.Connected := False; //Encerra a conexão com o banco de dados
end;

end.
