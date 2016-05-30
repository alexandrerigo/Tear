unit U03001;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UBase, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  System.Actions, Vcl.ActnList, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Datasnap.Provider, Datasnap.DBClient, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, DBGridBeleza, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, DBEditBeleza;

type
  TF03001 = class(TFBase)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEditIcone: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    ListView: TListView;
    Label4: TLabel;
    DBEditBeleza1: TDBEditBeleza;
    FDQuery1idinterface: TFDAutoIncField;
    FDQuery1idmodulo: TIntegerField;
    FDQuery1idgrupo: TIntegerField;
    FDQuery1descricao: TStringField;
    FDQuery1icone: TIntegerField;
    FDQuery1tela: TStringField;
    FDQuery1modulo: TStringField;
    ClientDataSet1idinterface: TAutoIncField;
    ClientDataSet1idmodulo: TIntegerField;
    ClientDataSet1idgrupo: TIntegerField;
    ClientDataSet1descricao: TStringField;
    ClientDataSet1icone: TIntegerField;
    ClientDataSet1tela: TStringField;
    ClientDataSet1modulo: TStringField;
    FDQuery1visivelMenu: TBooleanField;
    ClientDataSet1visivelMenu: TBooleanField;
    DBCheckBox1: TDBCheckBox;

    procedure ListViewSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure ClientDataSet1AfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F03001: TF03001;
  UltSelecionado : String;

implementation

{$R *.dfm}

uses uPrincipal;

procedure TF03001.ClientDataSet1AfterScroll(DataSet: TDataSet);
begin
  inherited;
  ListView.Items[ClientDataSet1.Fields[4].AsInteger].Selected := True;
end;

procedure TF03001.FormCreate(Sender: TObject);
var
  Cont, I : Integer;
  ListItem : TListItem;
begin
  inherited;
  Cont := FPrincipal.ImageList32.Count;

  for I := 0 to Cont - 1 do
  begin
    ListItem := ListView.Items.Add;
    ListItem.ImageIndex:= I;
    ListItem.Caption := IntToStr(I);
  end;
end;

procedure TF03001.ListViewSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  inherited;
  if Item.Caption <> UltSelecionado then
  begin
    DBEditIcone.Text := Item.Caption;
    UltSelecionado := Item.Caption;
  end;
end;

Initialization
  RegisterClass(TF03001);
Finalization
  UnRegisterClass(TF03001);
end.
