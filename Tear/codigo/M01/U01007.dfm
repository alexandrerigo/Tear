inherited F01007: TF01007
  Caption = 'F01007'
  ClientHeight = 525
  ClientWidth = 843
  ExplicitWidth = 859
  ExplicitHeight = 564
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    Width = 843
    Height = 490
    ActivePage = TbDados
    OnChange = PageControlChange
    ExplicitWidth = 843
    ExplicitHeight = 490
    inherited TbDados: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 835
      ExplicitHeight = 462
      inherited grDados: TGroupBox
        Width = 835
        Height = 462
        ExplicitWidth = 835
        ExplicitHeight = 462
        object Label1: TLabel
          Left = 23
          Top = 36
          Width = 22
          Height = 13
          Caption = 'COD'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 305
          Top = 81
          Width = 59
          Height = 13
          Caption = 'DESCRI'#199#195'O'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 551
          Top = 81
          Width = 27
          Height = 13
          Align = alCustom
          Anchors = [akTop, akRight]
          Caption = 'DATA'
        end
        object Label4: TLabel
          Left = 22
          Top = 81
          Width = 35
          Height = 13
          Caption = 'GRUPO'
          FocusControl = DBEdit4
        end
        object DBEdit1: TDBEdit
          Left = 23
          Top = 52
          Width = 84
          Height = 21
          TabStop = False
          DataField = 'idProduto'
          DataSource = DS
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 305
          Top = 97
          Width = 225
          Height = 21
          Align = alCustom
          Anchors = [akLeft, akTop, akRight, akBottom]
          CharCase = ecUpperCase
          DataField = 'descricao'
          DataSource = DS
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 22
          Top = 97
          Width = 35
          Height = 21
          TabStop = False
          Color = 15724527
          DataField = 'idGrupo'
          DataSource = DS
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit_Calendario1: TDBEdit_Calendario
          Left = 551
          Top = 97
          Width = 120
          Height = 21
          Hint = 'Duplo Clique para Buscar a data de hoje!'
          Align = alCustom
          Anchors = [akTop, akRight]
          DataField = 'data'
          DataSource = DS
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Formato_Data = 'dd/mm/yy'
        end
        object DBEditBeleza1: TDBEditBeleza
          Left = 56
          Top = 97
          Width = 229
          Height = 21
          Color = 15724527
          DataField = 'grupo'
          DataSource = DS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Ativar_Pesquisa = True
          mostrar_Botao = True
          sql.Strings = (
            
              'select idgrupo_Produto, descricao from grupo_produto where descr' +
              'icao like :varDescricao')
          database = 'balay'
          campo = 'descricao'
          Sempre_Mostrar_Janela = False
          Outro_Edit = DBEdit4
          campo_outro_edit = 'idgrupo_Produto'
          CorBorda = clGray
          NovoLayout = False
        end
        object GroupBoxOperacoes: TGroupBox
          Left = 305
          Top = 129
          Width = 225
          Height = 264
          Align = alCustom
          Anchors = [akLeft, akTop, akRight, akBottom]
          BiDiMode = bdLeftToRight
          Caption = 'OPERA'#199#213'ES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Padding.Left = 4
          Padding.Right = 4
          Padding.Bottom = 4
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 5
          object DBGridBeleza2: TDBGridBeleza
            Left = 6
            Top = 72
            Width = 213
            Height = 186
            Hint = 'Clique no Titulo da Coluna para Ordenar'
            TabStop = False
            Align = alClient
            BorderStyle = bsNone
            Color = clBtnFace
            DataSource = DataSource3
            FixedColor = 16762447
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = DBGridBeleza2DblClick
            OnKeyDown = DBGridBeleza2KeyDown
            Cor_2 = 16382457
            Direcao_Cor2 = dg_Horiz
            Direcao_Enter = dg_Horiz
            ClickTituloOrdenar = True
            MarcarLinhaInteira = True
            CorLinhaMarcada = 15854564
            BloquearExportacoes = False
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'idOperacao'
                Title.Caption = 'COD'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlue
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 54
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descricao'
                Title.Caption = 'DESCRI'#199#195'O'
                Width = 164
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'tempoPadraoFinal'
                Title.Alignment = taCenter
                Title.Caption = 'TPF'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Time'
                Title.Alignment = taCenter
                Title.Caption = 'TPF-Hora'
                Width = 150
                Visible = True
              end>
          end
          object GroupBox1: TGroupBox
            Left = 6
            Top = 18
            Width = 213
            Height = 54
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            DoubleBuffered = False
            ParentDoubleBuffered = False
            TabOrder = 1
            object BitBtn1: TBitBtn
              Left = 120
              Top = 15
              Width = 27
              Height = 23
              Align = alCustom
              Anchors = [akRight]
              Caption = '+'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = BitBtn1Click
            end
            object BtnExcluirOperacao: TBitBtn
              Left = 146
              Top = 15
              Width = 27
              Height = 23
              Align = alCustom
              Anchors = [akRight]
              Caption = '-'
              TabOrder = 2
              OnClick = BtnExcluirOperacaoClick
            end
            object EditBeleza1: TEditBeleza
              Left = 15
              Top = 16
              Width = 105
              Height = 21
              Align = alCustom
              Anchors = [akLeft, akRight]
              Color = 15724527
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Ativar_Pesquisa = True
              Ativar_MultiSelecao = False
              mostrar_Botao = True
              sql.Strings = (
                'select idOPERACAO, descricao from OPERACAO '
                
                  'where descricao like :varDescricao and idfase in (select distinc' +
                  't idfase from produto_has_fase where idfase =:idFas and idprodut' +
                  'o =:idProd)')
              database = 'balay'
              campo = 'descricao'
              Sempre_Mostrar_Janela = False
              Outro_Edit = Edit1
              campo_outro_edit = 'idOperacao'
              CorBorda = clGray
              NovoLayout = False
              OnButtonClick = EditBeleza1ButtonClick
            end
            object BitBtn4: TBitBtn
              Left = 172
              Top = 15
              Width = 27
              Height = 23
              Align = alCustom
              Anchors = [akRight]
              Caption = '/'
              TabOrder = 3
              OnClick = BitBtn4Click
            end
          end
        end
        object GroupBoxDependencias: TGroupBox
          Left = 551
          Top = 130
          Width = 259
          Height = 264
          Align = alCustom
          Anchors = [akTop, akRight, akBottom]
          Caption = 'PRECED'#202'NCIAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Padding.Left = 4
          Padding.Right = 4
          Padding.Bottom = 4
          ParentFont = False
          TabOrder = 6
          object GroupBox2: TGroupBox
            Left = 6
            Top = 18
            Width = 247
            Height = 54
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            TabOrder = 0
            object Button4: TButton
              Left = 167
              Top = 14
              Width = 27
              Height = 23
              Align = alCustom
              Anchors = [akRight, akBottom]
              Caption = '+'
              TabOrder = 0
              OnClick = Button4Click
            end
            object btnExcluirDependencia: TButton
              Left = 193
              Top = 14
              Width = 27
              Height = 23
              Align = alCustom
              Anchors = [akRight, akBottom]
              Caption = '-'
              TabOrder = 1
              OnClick = btnExcluirDependenciaClick
            end
            object EditBeleza2: TEditBeleza
              Left = 26
              Top = 15
              Width = 141
              Height = 21
              Color = 15724527
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              StyleElements = []
              Ativar_Pesquisa = True
              Ativar_MultiSelecao = False
              mostrar_Botao = True
              sql.Strings = (
                'select idOPERACAO, descricao from OPERACAO '
                
                  'where descricao like :varDescricao and idOperacao in (select dis' +
                  'tinct c.idOperacao from cronometragem c'
                'left outer join operacao o on o.idOperacao = c.idOperacao'
                'left outer join fase f on f.idfase = o.idfase '
                'where c.idproduto =:x and f.idFase =:y)')
              database = 'balay'
              campo = 'descricao'
              Sempre_Mostrar_Janela = False
              Outro_Edit = Edit2
              campo_outro_edit = 'idOperacao'
              CorBorda = clGray
              NovoLayout = False
              OnButtonClick = EditBeleza2ButtonClick
            end
          end
          object DBGridBeleza3: TDBGridBeleza
            Left = 6
            Top = 72
            Width = 247
            Height = 186
            Hint = 'Clique no Titulo da Coluna para Ordenar'
            Align = alClient
            BorderStyle = bsNone
            Color = clBtnFace
            DataSource = DataSource2
            FixedColor = 16762447
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWhite
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnKeyDown = DBGridBeleza3KeyDown
            Cor_2 = 16382457
            Direcao_Cor2 = dg_Horiz
            Direcao_Enter = dg_Horiz
            ClickTituloOrdenar = True
            MarcarLinhaInteira = True
            CorLinhaMarcada = 15854564
            BloquearExportacoes = False
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'idOperacao'
                Title.Caption = 'COD'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 54
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descricao'
                Title.Caption = 'DESCRI'#199#195'O'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 145
                Visible = True
              end>
          end
        end
        object Edit2: TEdit
          Left = 652
          Top = 419
          Width = 80
          Height = 21
          TabOrder = 7
          Text = 'Edit2'
          Visible = False
        end
        object Edit1: TEdit
          Left = 363
          Top = 3
          Width = 80
          Height = 21
          TabStop = False
          ReadOnly = True
          TabOrder = 8
          Text = 'Edit1'
          Visible = False
        end
        object GroupBoxFases: TGroupBox
          Left = 23
          Top = 131
          Width = 259
          Height = 262
          Align = alCustom
          Anchors = [akLeft, akTop, akBottom]
          Caption = 'FASES'
          Padding.Left = 4
          Padding.Right = 4
          Padding.Bottom = 4
          TabOrder = 9
          object GroupBox3: TGroupBox
            Left = 6
            Top = 15
            Width = 247
            Height = 55
            Align = alTop
            TabOrder = 0
            object EditBeleza4: TEditBeleza
              Left = 30
              Top = 17
              Width = 131
              Height = 21
              Color = 15724527
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Ativar_Pesquisa = True
              Ativar_MultiSelecao = False
              mostrar_Botao = True
              sql.Strings = (
                'select idfase, descricao from fase '
                'where descricao like :varDescricao')
              database = 'balay'
              campo = 'descricao'
              Sempre_Mostrar_Janela = False
              Outro_Edit = Edit5
              campo_outro_edit = 'idfase'
              CorBorda = clGray
              NovoLayout = False
            end
            object BitBtn2: TBitBtn
              Left = 162
              Top = 16
              Width = 27
              Height = 23
              Caption = '+'
              TabOrder = 1
              OnClick = BitBtn2Click
            end
            object BitBtn3: TBitBtn
              Left = 187
              Top = 16
              Width = 27
              Height = 23
              Caption = '-'
              TabOrder = 2
              OnClick = BitBtn3Click
            end
          end
          object DBGridBeleza4: TDBGridBeleza
            Left = 6
            Top = 70
            Width = 247
            Height = 186
            Hint = 'Clique no Titulo da Coluna para Ordenar'
            Align = alClient
            BorderStyle = bsNone
            Color = clBtnFace
            DataSource = DataSource4
            FixedColor = 16762447
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWhite
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Cor_2 = 16382457
            Direcao_Cor2 = dg_Horiz
            Direcao_Enter = dg_Horiz
            ClickTituloOrdenar = True
            MarcarLinhaInteira = True
            CorLinhaMarcada = 15854564
            BloquearExportacoes = False
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'idFase'
                Title.Caption = 'COD'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 54
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'descricao'
                Title.Caption = 'FASE'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 91
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'sequencia'
                Title.Caption = 'SEQ.'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Visible = True
              end>
          end
        end
        object Edit5: TEdit
          Left = 761
          Top = 57
          Width = 69
          Height = 21
          TabOrder = 10
          Text = 'Edit5'
          Visible = False
        end
      end
    end
    inherited TbFiltros: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 835
      ExplicitHeight = 462
      inherited GBFiltros: TGroupBox
        Width = 835
        ExplicitWidth = 835
        inherited Panel1: TPanel
          Width = 833
          ExplicitWidth = 833
          inherited BtnLimparFiltros: TButton
            Left = 787
            ExplicitLeft = 787
          end
        end
      end
      inherited DBGridBeleza1: TDBGridBeleza
        Width = 835
        Height = 351
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'idProduto'
            Title.Caption = 'COD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'DESCRI'#199#195'O'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data'
            Title.Caption = 'DATA'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'idGrupo'
            Title.Alignment = taCenter
            Title.Caption = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'grupo'
            Title.Caption = 'GRUPO'
            Width = 820
            Visible = True
          end>
      end
      inherited PanelFiltros: TPanel
        Width = 835
        ExplicitWidth = 835
        inherited btnFiltrar: TButton
          Left = 784
          OnClick = btnFiltrarClick
          ExplicitLeft = 784
        end
        object chkDescricao: TCheckBox
          Left = 10
          Top = 14
          Width = 97
          Height = 17
          Caption = 'DESCRI'#199#195'O'
          TabOrder = 1
        end
        object ChkGrupo: TCheckBox
          Left = 236
          Top = 14
          Width = 97
          Height = 17
          Caption = 'GRUPO'
          TabOrder = 2
        end
        object Edit3: TEdit
          Left = 10
          Top = 32
          Width = 200
          Height = 21
          TabOrder = 3
          OnChange = Edit3Change
        end
        object EditBeleza3: TEditBeleza
          Left = 236
          Top = 32
          Width = 200
          Height = 21
          Color = 15724527
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Ativar_Pesquisa = True
          Ativar_MultiSelecao = False
          mostrar_Botao = True
          sql.Strings = (
            'select idgrupo_produto, descricao from grupo_produto '
            'where descricao like :varDescricao')
          database = 'balay'
          campo = 'descricao'
          Sempre_Mostrar_Janela = False
          Marcar_CheckBox = ChkGrupo
          Outro_Edit = Edit4
          campo_outro_edit = 'idGrupo_produto'
          CorBorda = clGray
          NovoLayout = False
        end
        object Edit4: TEdit
          Left = 439
          Top = 32
          Width = 33
          Height = 21
          TabOrder = 5
          Visible = False
        end
      end
    end
  end
  inherited Panel2: TPanel
    Width = 843
    ExplicitWidth = 843
    inherited BFechar: TSpeedButton
      Left = 809
      ExplicitLeft = 777
    end
  end
  inherited DS: TDataSource
    Left = 784
    Top = 232
  end
  inherited ClientDataSet1: TClientDataSet
    Left = 760
    Top = 232
    object ClientDataSet1idProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object ClientDataSet1descricao: TStringField
      FieldName = 'descricao'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object ClientDataSet1data: TDateField
      FieldName = 'data'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1idGrupo: TIntegerField
      FieldName = 'idGrupo'
      ProviderFlags = [pfInUpdate]
    end
    object ClientDataSet1grupo: TStringField
      FieldName = 'grupo'
      ProviderFlags = []
      Size = 45
    end
  end
  inherited DataSetProvider1: TDataSetProvider
    Left = 736
    Top = 232
  end
  inherited FDQuery1: TFDQuery
    SQL.Strings = (
      
        'select prod.*, '#10'gp.descricao as grupo '#10'from produto prod'#10'left ou' +
        'ter join grupo_produto gp on prod.idgrupo = gp.idgrupo_produto;')
    Left = 704
    Top = 232
    object FDQuery1idProduto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idProduto'
      Origin = 'idProduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQuery1descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object FDQuery1data: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = '`data`'
      ProviderFlags = [pfInUpdate]
    end
    object FDQuery1idGrupo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idGrupo'
      Origin = 'idGrupo'
      ProviderFlags = [pfInUpdate]
    end
    object FDQuery1grupo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'grupo'
      Origin = 'descricao'
      ProviderFlags = []
      Size = 45
    end
  end
  inherited ImageListBase: TImageList
    Left = 632
    Top = 232
    Bitmap = {
      494C01010D002C00080210001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F708C3C3C33C77777788363636C9101010EF1E1E
      1EE1CACACA350000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFBFB04BEBEBE41545454AB1B1B1BE4030303FC444444BBA0A0A05F4343
      43BC585858A7F6F6F60900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EBEB
      EB147474748B0E0E0EF1484848B7B5B5B54A9595956A6565659AE9E9E916C4C4
      C43B1F1F1FE0B0B0B04F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E2E2E21D5050
      50AF303030CF8282827DA0A0A05FF9F9F90600000000DADADA25D8D8D827FDFD
      FD026262629D4C4C4CB3F6F6F609000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F20D525252AD0808
      08F77E7E7E81DCDCDC23F1F1F10EFBFBFB040000000000000000FEFEFE010000
      0000C2C2C23D202020DFC1C1C13E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ECECEC13686868974141
      41BE2A2A2AD5222222DD555555AABCBCBC43FBFBFB0400000000000000000000
      0000F5F5F50A484848B78181817E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE01F9F9
      F906E6E6E619B3B3B34C575757A81C1C1CE38282827DF6F6F609000000000000
      000000000000D5D5D52AD6D6D629FAFAFA050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD02ADADAD527171
      718EC8C8C83700000000F9F9F906A3A3A35C1C1C1CE39393936C000000000000
      0000EDEDED12ABABAB54585858A7C0C0C03F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D9D9D9261D1D1DE20000
      00FF404040BFF3F3F30C00000000FEFEFE01AAAAAA55B4B4B44BE2E2E21D9393
      936C383838C7040404FB1D1D1DE2CECECE310000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDF20282828D70000
      00FF4E4E4EB1F6F6F609000000000000000000000000A2A2A25D222222DD0101
      01FE090909F6444444BBB2B2B24DFDFDFD020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE01C6C6C6399797
      9768DBDBDB2400000000000000000000000000000000CACACA355D5D5DA26161
      619EA3A3A35CA1A1A15ECFCFCF30000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3C3C33CD4D4D42BFCFCFC03CACA
      CA35ECECEC130000000000000000000000000000000000000000FDFDFD020000
      00009B9B9B64050505FA68686897FEFEFE010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000111111EE4D4D4DB2EDEDED126A6A
      6A95C6C6C6390000000000000000000000000000000000000000000000000000
      0000D8D8D827212121DE252525DADCDCDC230000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009494946BB1B1B14EFEFEFE01F4F4
      F40BFCFCFC030000000000000000000000000000000000000000000000000000
      0000000000008585857A060606F99595956A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E2E2E21D2C2C2CD33A3A3AC50000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008A8A8A75252525DA0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000097979700CACACA00FBFBFB00FBFBFB00C9C9C900969696000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B8B8B800C2C2C200CDCDCD00CDCDCD00C2C2C200B7B7B7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094949400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009292
      9200000000000000000000000000000000000000000000000000000000000000
      0000B7B7B700CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00B7B7
      B700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000565656000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B0B0B000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6E6
      E600FFFFFF005656560000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C8C8
      C800CDCDCD00B0B0B0000000000000000000000000000000000094949400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009292920000000000000000000000000000000000B7B7B700CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00B7B7B70000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000057575700FFFF
      FF00E6E6E6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B0B0B000CDCD
      CD00C8C8C8000000000000000000000000000000000098989800FFFFFF00FFFF
      FF00FFFFFF00000000007A7A7A00FFFFFF00FFFFFF007979790000000000FFFF
      FF00FFFFFF00FFFFFF00969696000000000000000000B8B8B800CDCDCD00CDCD
      CD00CDCDCD0000000000B2B2B200CDCDCD00CDCDCD00B2B2B20000000000CDCD
      CD00CDCDCD00CDCDCD00B7B7B700000000000000000000000000000000000000
      00006F6F6F00EEEEEE00FDFDFD00BFBFBF006D6D6D00E8E8E800FFFFFF005757
      5700000000000000000000000000000000000000000000000000000000000000
      0000B4B4B400CACACA00CDCDCD00C2C2C200B3B3B300C9C9C900CDCDCD00B0B0
      B0000000000000000000000000000000000000000000CBCBCB00FFFFFF00FFFF
      FF00FFFFFF007979790000000000F2F2F200F2F2F2000000000079797900FFFF
      FF00FFFFFF00FFFFFF00C9C9C9000000000000000000C2C2C200CDCDCD00CDCD
      CD00CDCDCD00B2B2B20000000000CACACA00CACACA0000000000B2B2B200CDCD
      CD00CDCDCD00CDCDCD00C2C2C20000000000000000000000000000000000B3B3
      B300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8E8E8000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00C9C9C9000000
      00000000000000000000000000000000000000000000FCFCFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F1F1F1000000000000000000F2F2F200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FBFBFB000000000000000000CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CACACA000000000000000000CACACA00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD0000000000000000000000000070707000F8F8
      F8006868680000000000000000000000000069696900FFFFFF006D6D6D000000
      0000000000000000000000000000000000000000000000000000B4B4B400CBCB
      CB00B3B3B300000000000000000000000000B3B3B300CDCDCD00B3B3B3000000
      00000000000000000000000000000000000000000000FCFCFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F1F1F1000000000000000000F2F2F200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FBFBFB000000000000000000CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CACACA000000000000000000CACACA00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00000000000000000000000000C1C1C1009C9C
      9C000000000000000000000000000000000000000000FFFFFF00BFBFBF000000
      0000000000000000000000000000000000000000000000000000C2C2C200BCBC
      BC000000000000000000000000000000000000000000CDCDCD00C2C2C2000000
      00000000000000000000000000000000000000000000CCCCCC00FFFFFF00FFFF
      FF00FFFFFF007A7A7A0000000000F1F1F100F1F1F100000000007A7A7A00FFFF
      FF00FFFFFF00FFFFFF00CACACA000000000000000000C2C2C200CDCDCD00CDCD
      CD00CDCDCD00B2B2B20000000000CACACA00CACACA0000000000B2B2B200CDCD
      CD00CDCDCD00CDCDCD00C2C2C200000000000000000000000000FEFEFE004141
      41000000000000000000000000000000000000000000FFFFFF00FDFDFD000000
      0000000000000000000000000000000000000000000000000000CDCDCD00ACAC
      AC000000000000000000000000000000000000000000CDCDCD00CDCDCD000000
      0000000000000000000000000000000000000000000099999900FFFFFF00FFFF
      FF00FFFFFF00000000007A7A7A00FFFFFF00FFFFFF007979790000000000FFFF
      FF00FFFFFF00FFFFFF00979797000000000000000000B8B8B800CDCDCD00CDCD
      CD00CDCDCD0000000000B2B2B200CDCDCD00CDCDCD00B2B2B20000000000CDCD
      CD00CDCDCD00CDCDCD00B8B8B800000000000000000000000000EFEFEF005656
      56000000000000000000000000000000000000000000FFFFFF00EEEEEE000000
      0000000000000000000000000000000000000000000000000000CACACA00B0B0
      B0000000000000000000000000000000000000000000CDCDCD00CACACA000000
      000000000000000000000000000000000000000000000000000096969600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009494940000000000000000000000000000000000B7B7B700CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00B7B7B7000000000000000000000000000000000072727200F7F7
      F7006767670000000000000000000000000068686800FFFFFF006F6F6F000000
      0000000000000000000000000000000000000000000000000000B5B5B500CBCB
      CB00B3B3B300000000000000000000000000B3B3B300CDCDCD00B4B4B4000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00000000000000000000000000000000000000000000000000FFFF
      FF00F7F7F70056565600414141009C9C9C00F8F8F800B3B3B300000000000000
      000000000000000000000000000000000000000000000000000000000000CDCD
      CD00CBCBCB00B0B0B000ACACAC00BCBCBC00CBCBCB00BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000096969600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000B7B7B700CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00B7B7
      B700000000000000000000000000000000000000000000000000000000000000
      000072727200EFEFEF00FEFEFE00C1C1C1007070700000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5B5B500CACACA00CDCDCD00C2C2C200B4B4B40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00FCFCFC00FCFCFC00CBCBCB00989898000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B8B8B800C2C2C200CDCDCD00CDCDCD00C2C2C200B8B8B8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000090909000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008F8F
      8F00000000000000000000000000000000000000000000000000000000000000
      0000B6B6B600CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00B6B6
      B60000000000000000000000000000000000000000000000000091919100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008F8F8F0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FBFBFB006767670068686800FBFBFB00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A2A2A2000000000000000000A4A4A400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0066666600000000000000000067676700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A0A0A0000000000000000000A2A2A200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C0000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00AFAFAF0000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C0000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C0000000000000000000000000000000000000000000000000000000
      00000000000072727200EBEBEB00FFFFFF00FFFFFF00EBEBEB00727272000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B0B0B000C9C9C900CDCDCD00CDCDCD00C9C9C900B0B0B0000000
      000000000000000000000000000000000000000000000000000091919100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AFAF
      AF00000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F0F0F000000000000000000000000000000000000000000000000000CACA
      CA00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CACACA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FAFAFA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CDCDCD00CDCD
      CD00CBCBCB000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD000000000000000000CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FAFAFA008A8A8A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CDCDCD00CDCD
      CD00CDCDCD00CBCBCB00B5B5B500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD000000000000000000CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000FBFBFB00FFFF
      FF00FFFFFF00FFFFFF00FAFAFA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CBCBCB00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00000000000000000000000000000000000000000000000000FBFB
      FB00FFFFFF00FFFFFF00FFFFFF00FAFAFA008A8A8A0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CBCBCB00B5B5B50000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD000000000000000000000000000000000000000000000000008C8C
      8C00FBFBFB00FFFFFF00FFFFFF00FFFFFF00FAFAFA0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500CDCDCD00CDCDCD00CDCDCD00CDCDCD00CBCBCB0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD000000000000000000CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB00FFFFFF00FFFFFF00FFFFFF00FAFAFA008A8A8A000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CDCDCD00CDCDCD00CDCDCD00CDCDCD00CBCBCB00B5B5B5000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD000000000000000000CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000000000000000
      0000000000008C8C8C00FBFBFB00FFFFFF00FFFFFF00FFFFFF00F9F9F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5B5B500CDCDCD00CDCDCD00CDCDCD00CDCDCD00CBCBCB000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFB00FFFFFF00FFFFFF00FFFFFF009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CDCDCD00CDCDCD00CDCDCD00CDCDCD00B8B8
      B80000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000007272
      7200EBEBEB00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD000000000000000000B0B0
      B000C9C9C9000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008D8D8D00FBFBFB00FFFFFF00FEFEFE000000
      0000AAAAAA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B5B5B500CDCDCD00CDCDCD00CDCDCD000000
      0000BFBFBF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000072727200FFFF
      FF00AFAFAF00000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD0000000000B0B0B000CDCD
      CD00BCBCBC000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009999990000000000FFFF
      FF00FFFFFF00F4F4F40000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B8B8B80000000000CDCD
      CD00CDCDCD00CACACA000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0072727200EBEBEB00AFAF
      AF0000000000000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00B0B0B000C9C9C900BCBC
      BC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AAAAAA00FFFF
      FF00FFFFFF00B8B8B80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF00CDCD
      CD00CDCDCD00BEBEBE000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AFAFAF000000
      000000000000000000000000000000000000000000000000000000000000CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00BCBCBC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800B8B8B8000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CBCB
      CB00BEBEBE00000000000000000000000000000000000000000000000000F1F1
      F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AFAFAF00000000000000
      000000000000000000000000000000000000000000000000000000000000CACA
      CA00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00BCBCBC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FC07000000000000F003000000000000
      E003000000000000C08100000000000080D10000000000008071000000000000
      C038000000000000843000000000000082000000000000008380000000000000
      878100000000000007D000000000000007F000000000000007F8000000000000
      FFF8000000000000FFFC000000000000FFFFFFFFFFFFFFFFF81FF81FFFFFFFFF
      F00FF00FFFF7FFF7E007E007FFE3FFE3C003C003FFC7FFC784218421F00FF00F
      82418241E01FE01F81818181C71FC71F81818181CF9FCF9F82418241CF9FCF9F
      84218421CF9FCF9FC003C003C71FC71FE007E007E03FE03FF00FF00FF07FF07F
      F81FF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F00FF00FC003C003F00FF00FC003C003F00FF00FC183C183F00FF00FC183C183
      F00FF00FC183C183F00FF00FC003C003F00FF00FC003C003F00FF00FC003C003
      F00FF00FDFC3DFC3FFFFFFFFDFC3DFC3E007E007DFC7DFC7F81FF81FC00FC00F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE007E007FFFFFFFF
      E007E007C7FFC7FFE187E187C1FFC1FFE187E187C1FFC1FFE7E7E7E7E07FE07F
      E7E7E7E7E07FE07FE187E187F81FF81FE187E187F81FF81FE007E007FE0FFE0F
      E067E067FE17FE17E047E047FFA3FFA3E00FE00FFFC3FFC3E01FE01FFFE7FFE7
      E03FE03FFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited Acoes: TActionList
    Left = 560
    Top = 232
  end
  object DataSource3: TDataSource
    DataSet = ClientDataSet3
    OnDataChange = DataSource3DataChange
    Left = 472
    Top = 240
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'idOperacao'
    Params = <>
    ProviderName = 'DataSetProvider3'
    AfterInsert = ClientDataSet3AfterInsert
    AfterPost = ClientDataSet3AfterPost
    AfterCancel = ClientDataSet3AfterCancel
    AfterDelete = ClientDataSet3AfterDelete
    OnCalcFields = ClientDataSet3CalcFields
    Left = 440
    Top = 240
    object ClientDataSet3idcronometragem: TIntegerField
      FieldName = 'idcronometragem'
    end
    object ClientDataSet3tempo_original: TBooleanField
      FieldName = 'tempo_original'
    end
    object ClientDataSet3tempo_ideal: TBooleanField
      FieldName = 'tempo_ideal'
    end
    object ClientDataSet3ritmo: TIntegerField
      FieldName = 'ritmo'
    end
    object ClientDataSet3num_pecas: TIntegerField
      FieldName = 'num_pecas'
    end
    object ClientDataSet3tolerancia: TIntegerField
      FieldName = 'tolerancia'
    end
    object ClientDataSet3comprimento_prod: TSingleField
      FieldName = 'comprimento_prod'
    end
    object ClientDataSet3num_ocorrencia: TIntegerField
      FieldName = 'num_ocorrencia'
    end
    object ClientDataSet3idProduto: TIntegerField
      FieldName = 'idProduto'
    end
    object ClientDataSet3idCronometrista: TIntegerField
      FieldName = 'idCronometrista'
    end
    object ClientDataSet3idTecido: TIntegerField
      FieldName = 'idTecido'
    end
    object ClientDataSet3idOperacao: TIntegerField
      FieldName = 'idOperacao'
    end
    object ClientDataSet3idOperador: TIntegerField
      FieldName = 'idOperador'
    end
    object ClientDataSet3descricao: TStringField
      FieldName = 'descricao'
      Size = 45
    end
    object ClientDataSet3tempoPadraoFinal: TSingleField
      FieldName = 'tempoPadraoFinal'
      ProviderFlags = []
    end
    object ClientDataSet3Time: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'Time'
      Size = 50
    end
  end
  object DataSetProvider3: TDataSetProvider
    DataSet = FDQuery3
    Left = 408
    Top = 240
  end
  object FDQuery3: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'select phf.*, f.descricao from cronometragem phf '#13#10#10
      'left outer join operacao f on phf.idoperacao = f.idoperacao '#10
      'where phf.idProduto =:id and f.idFase =:idFas '#10
      'order by (f.idOperacao);')
    Left = 376
    Top = 240
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDFAS'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object FDQuery3idcronometragem: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idcronometragem'
      Origin = 'idcronometragem'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQuery3tempo_original: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'tempo_original'
      Origin = 'tempo_original'
    end
    object FDQuery3tempo_ideal: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'tempo_ideal'
      Origin = 'tempo_ideal'
    end
    object FDQuery3ritmo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ritmo'
      Origin = 'ritmo'
    end
    object FDQuery3num_pecas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'num_pecas'
      Origin = 'num_pecas'
    end
    object FDQuery3tolerancia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'tolerancia'
      Origin = 'tolerancia'
    end
    object FDQuery3comprimento_prod: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'comprimento_prod'
      Origin = 'comprimento_prod'
    end
    object FDQuery3num_ocorrencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'num_ocorrencia'
      Origin = 'num_ocorrencia'
    end
    object FDQuery3idProduto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idProduto'
      Origin = 'idProduto'
    end
    object FDQuery3idCronometrista: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idCronometrista'
      Origin = 'idCronometrista'
    end
    object FDQuery3idTecido: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idTecido'
      Origin = 'idTecido'
    end
    object FDQuery3idOperacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idOperacao'
      Origin = 'idOperacao'
    end
    object FDQuery3idOperador: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idOperador'
      Origin = 'idOperador'
    end
    object FDQuery3descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      ProviderFlags = []
      Size = 45
    end
    object FDQuery3tempoPadraoFinal: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'tempoPadraoFinal'
      Origin = 'tempoPadraoFinal'
      ProviderFlags = []
    end
  end
  object ImageList2: TImageList
    Left = 596
    Top = 233
    Bitmap = {
      494C010103000800740110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000000000000000000000000000F7F7
      F708B2B2B24D505050AF131313EC000000FF000000FF111111EE4D4D4DB2AEAE
      AE51F6F6F609000000000000000000000000000000000000000000000000F7F7
      F708B1B1B14E505050AF131313EC000000FF000000FF111111EE4D4D4DB2AEAE
      AE51F6F6F609000000000000000000000000000000000000000000000000F7F7
      F708B3B3B34C535353AC161616E9010101FE010101FE151515EA515151AEB1B1
      B14EF7F7F7080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5E5E51A6868
      68970C0C0CF3070707F82A2A2AD5484848B7484848B72B2B2BD4070707F80B0B
      0BF46464649BE2E2E21D00000000000000000000000000000000E5E5E51A6868
      68970C0C0CF3070707F82A2A2AD5484848B7484848B72B2B2BD4070707F80B0B
      0BF46464649BE2E2E21D00000000000000000000000000000000E6E6E6196A6A
      6A950E0E0EF1000000FF0A0A0AF51B1B1BE41B1B1BE40A0A0AF5000000FF0D0D
      0DF267676798E4E4E41B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5E5E51A4B4B4BB40202
      02FD414141BEB0B0B04FE9E9E916F9F9F906F9F9F906EAEAEA15B4B4B44B4545
      45BA020202FD464646B9E2E2E21D0000000000000000E5E5E51A4B4B4BB40202
      02FD414141BEB0B0B04FE9E9E916F9F9F906F9F9F906EAEAEA15B3B3B34C4545
      45BA020202FD464646B9E2E2E21D0000000000000000E6E6E6194C4C4CB30000
      00FF171717E87373738CBFBFBF40DFDFDF20DFDFDF20C1C1C13E7575758A1919
      19E6000000FF484848B7E3E3E31C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F9066B6B6B94010101FE6262
      629DEAEAEA15000000000000000000000000000000000000000000000000EDED
      ED1268686897010101FE6464649BF7F7F708F9F9F9066B6B6B94010101FE6262
      629DEAEAEA15000000000000000000000000000000000000000000000000EDED
      ED1268686897010101FE6464649BF7F7F708F9F9F9066C6C6C93000000FF2C2C
      2CD3BFBFBF40FEFEFE01FCFCFC03E3E3E31CE3E3E31CFBFBFB04FEFEFE01C3C3
      C33C2F2F2FD0000000FF67676798F7F7F7080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B54A0F0F0FF0404040BFE9E9
      E9160000000000000000C8C8C8379A9A9A659A9A9A65C5C5C53A000000000000
      0000ECECEC13464646B90C0C0CF3ADADAD52B5B5B54A0E0E0EF1404040BFE9E9
      E916000000000000000000000000CCCCCC33C9C9C93600000000000000000000
      0000ECECEC13464646B90C0C0CF3ADADAD52B5B5B54A101010EF161616E9BEBE
      BE410000000000000000E4E4E41B363636C9333333CCE1E1E11E000000000000
      0000C2C2C23D191919E60E0E0EF1B0B0B04F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000575757A8050505FAACACAC530000
      000000000000000000007373738C000000FF000000FF6B6B6B94000000000000
      000000000000B3B3B34C070707F84E4E4EB1575757A8050505FAACACAC530000
      00000000000000000000BEBEBE41262626D9232323DCBABABA45000000000000
      000000000000B3B3B34C070707F84E4E4EB1575757A8000000FF7070708FFEFE
      FE010000000000000000E1E1E11E1D1D1DE21A1A1AE5DDDDDD22000000000000
      0000000000007575758A000000FF515151AE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000191919E6262626D9E5E5E51A0000
      000000000000000000007373738C000000FF000000FF6B6B6B94000000000000
      000000000000E9E9E9162B2B2BD4121212ED191919E6262626D9E5E5E51A0000
      0000FEFEFE01B2B2B24D1F1F1FE0000000FF000000FF1C1C1CE3ACACAC53FEFE
      FE0100000000E9E9E9162B2B2BD4121212ED1B1B1BE4080808F7BBBBBB440000
      0000E1E1E11EDEDEDE21C3C3C33C1A1A1AE5161616E9BFBFBF40DFDFDF20E1E1
      E11EFEFEFE01C0C0C03F0A0A0AF5161616E90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF414141BEF6F6F6090000
      0000F9F9F906F5F5F50A6E6E6E91000000FF000000FF67676798F5F5F50AF9F9
      F90600000000F9F9F906484848B7000000FF000000FF414141BEF6F6F6090000
      0000DCDCDC235F5F5FA01C1C1CE3000000FF000000FF1A1A1AE55C5C5CA3D8D8
      D82700000000F9F9F906484848B7000000FF030303FC181818E7DADADA25E6E6
      E619363636C9181818E7171717E8030303FC030303FC161616E9181818E73333
      33CCE3E3E31CDEDEDE211B1B1BE4000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010101FE414141BEF6F6F6090000
      0000DCDCDC235C5C5CA3191919E6000000FF000000FF171717E8585858A7D9D9
      D92600000000F9F9F906474747B8000000FF010101FE414141BEF6F6F6090000
      0000FAFAFA05F8F8F8077070708F000000FF000000FF68686897F7F7F708FAFA
      FA0500000000F9F9F906474747B8000000FF030303FC181818E7DADADA25E7E7
      E718393939C61C1C1CE31A1A1AE5030303FC030303FC1A1A1AE51C1C1CE33636
      36C9E4E4E41BDEDEDE211B1B1BE4000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B1B1BE4242424DBE4E4E41B0000
      000000000000B7B7B748232323DC000000FF000000FF202020DFB2B2B24DFEFE
      FE0100000000E8E8E8172A2A2AD5131313EC1B1B1BE4242424DBE4E4E41B0000
      000000000000000000007373738C000000FF000000FF6B6B6B94000000000000
      000000000000E8E8E8172A2A2AD5131313EC1C1C1CE3070707F8BABABA450000
      0000E4E4E41BE2E2E21DC6C6C6391A1A1AE5171717E8C3C3C33CE2E2E21DE4E4
      E41B00000000BEBEBE41090909F6171717E80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000595959A6050505FAA9A9A9560000
      00000000000000000000C3C3C33C2A2A2AD5262626D9BFBFBF40000000000000
      000000000000B0B0B04F070707F8515151AE595959A6050505FAA9A9A9560000
      000000000000000000007373738C000000FF000000FF6C6C6C93000000000000
      000000000000B0B0B04F070707F8515151AE595959A6000000FF6D6D6D92FDFD
      FD020000000000000000E1E1E11E1D1D1DE21A1A1AE5DDDDDD22000000000000
      0000FEFEFE017373738C000000FF535353AC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B8B8B847101010EF3C3C3CC3E6E6
      E619000000000000000000000000D1D1D12ECECECE3100000000000000000000
      0000EAEAEA15424242BD0D0D0DF2B1B1B14EB8B8B847101010EF3C3C3CC3E6E6
      E6190000000000000000CCCCCC33A1A1A15EA1A1A15EC9C9C936000000000000
      0000EAEAEA15424242BD0D0D0DF2B1B1B14EB7B7B748111111EE141414EBBBBB
      BB440000000000000000E4E4E41B393939C6363636C9E1E1E11E000000000000
      0000BFBFBF40171717E80F0F0FF0B2B2B24D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA056F6F6F90010101FE5C5C
      5CA3E7E7E718000000000000000000000000000000000000000000000000EAEA
      EA156262629D010101FE69696996F8F8F807FAFAFA056F6F6F90010101FE5C5C
      5CA3E7E7E718000000000000000000000000000000000000000000000000EAEA
      EA156262629D010101FE69696996F8F8F807FAFAFA056F6F6F90000000FF2929
      29D6BBBBBB44FDFDFD02FCFCFC03E6E6E619E6E6E619FCFCFC03FDFDFD02BFBF
      BF402C2C2CD3000000FF6A6A6A95F8F8F8070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8E8E817515151AE0101
      01FE3B3B3BC4AAAAAA55E5E5E51AF7F7F708F7F7F708E6E6E619ADADAD523F3F
      3FC0020202FD4B4B4BB4E5E5E51A0000000000000000E8E8E817515151AE0101
      01FE3B3B3BC4AAAAAA55E5E5E51AF7F7F708F7F7F708E6E6E619ADADAD523F3F
      3FC0020202FD4B4B4BB4E5E5E51A0000000000000000E8E8E817505050AF0000
      00FF151515EA6D6D6D92BBBBBB44DBDBDB24DBDBDB24BCBCBC437070708F1717
      17E8000000FF4C4C4CB3E5E5E51A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8E8E8176F6F
      6F900F0F0FF0050505FA242424DB414141BE414141BE262626D9050505FA0E0E
      0EF16B6B6B94E5E5E51A00000000000000000000000000000000E8E8E8176F6F
      6F900F0F0FF0050505FA242424DB414141BE414141BE262626D9050505FA0E0E
      0EF16B6B6B94E5E5E51A00000000000000000000000000000000E8E8E8176F6F
      6F90101010EF000000FF080808F7181818E7181818E7080808F7000000FF0F0F
      0FF06C6C6C93E6E6E61900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9F9
      F906B9B9B946595959A61A1A1AE5020202FD010101FE181818E7565656A9B5B5
      B54AF8F8F807000000000000000000000000000000000000000000000000F9F9
      F906B9B9B946595959A61A1A1AE5020202FD010101FE181818E7565656A9B5B5
      B54AF8F8F807000000000000000000000000000000000000000000000000F9F9
      F906B8B8B847595959A61C1C1CE3030303FC030303FC1B1B1BE4575757A8B6B6
      B649F8F8F8070000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00E007E007E0070000C003C003C0030000
      800180018001000007E007E0000000000C300E700C3000001C381C380C380000
      1C381008100000001008100800000000100810080000000018081C3810080000
      1C381C380C3000000E700C300C30000007E007E0000000008001800180010000
      C003C003C0030000E007E007E007000000000000000000000000000000000000
      000000000000}
  end
  object FDQuery2: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      'select dep.*, d.idOperacao, op.descricao from dependencia dep '#10
      
        'left outer join cronometragem c on dep.idCronometragem = c.idCro' +
        'nometragem '#13#10#10
      ''
      
        'left outer join cronometragem d on dep.idCronometragemDependenci' +
        'a = d.idCronometragem '#10
      'left outer join operacao op on op.idOperacao = d.idOperacao '#13#10#10
      ''
      
        'where d.idProduto =:idProd and c.idOperacao =:idOp order by(op.i' +
        'dOperacao);')
    Left = 636
    Top = 427
    ParamData = <
      item
        Name = 'IDPROD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDOP'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object FDQuery2idCronometragem: TIntegerField
      FieldName = 'idCronometragem'
      Origin = 'idCronometragem'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery2idCronometragemDependencia: TIntegerField
      FieldName = 'idCronometragemDependencia'
      Origin = 'idCronometragemDependencia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery2idOperacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idOperacao'
      Origin = 'idOperacao'
      ProviderFlags = []
    end
    object FDQuery2descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = FDQuery2
    Left = 668
    Top = 427
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    AfterPost = ClientDataSet2AfterPost
    AfterCancel = ClientDataSet2AfterCancel
    AfterDelete = ClientDataSet2AfterDelete
    Left = 700
    Top = 427
    object ClientDataSet2idCronometragem: TIntegerField
      FieldName = 'idCronometragem'
      Required = True
    end
    object ClientDataSet2idCronometragemDependencia: TIntegerField
      FieldName = 'idCronometragemDependencia'
      Required = True
    end
    object ClientDataSet2idOperacao: TIntegerField
      FieldName = 'idOperacao'
    end
    object ClientDataSet2descricao: TStringField
      FieldName = 'descricao'
      ProviderFlags = []
      Size = 45
    end
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 732
    Top = 427
  end
  object FDQuery4: TFDQuery
    Connection = DModule.FDConnection
    SQL.Strings = (
      
        'select phf.*, f.descricao from produto_has_fase phf '#10'left outer ' +
        'join fase f on phf.idfase = f.idfase '#10'where phf.idProduto =:id '#10 +
        'order by (phf.sequencia)')
    Left = 556
    Top = 11
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQuery4idProduto: TIntegerField
      FieldName = 'idProduto'
      Origin = 'idProduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery4idFase: TIntegerField
      FieldName = 'idFase'
      Origin = 'idFase'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery4sequencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'sequencia'
      Origin = 'sequencia'
    end
    object FDQuery4descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      ProviderFlags = []
      Size = 45
    end
  end
  object ClientDataSet4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider4'
    AfterPost = ClientDataSet4AfterPost
    AfterCancel = ClientDataSet4AfterCancel
    AfterDelete = ClientDataSet4AfterDelete
    Left = 620
    Top = 11
    object ClientDataSet4idProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object ClientDataSet4idFase: TIntegerField
      FieldName = 'idFase'
      Required = True
    end
    object ClientDataSet4sequencia: TIntegerField
      FieldName = 'sequencia'
    end
    object ClientDataSet4descricao: TStringField
      FieldName = 'descricao'
      Size = 45
    end
  end
  object DataSetProvider4: TDataSetProvider
    DataSet = FDQuery4
    Left = 596
    Top = 11
  end
  object DataSource4: TDataSource
    DataSet = ClientDataSet4
    OnDataChange = DataSource4DataChange
    Left = 652
    Top = 11
  end
end
