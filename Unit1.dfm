object Form1: TForm1
  Left = 242
  Top = 215
  Width = 469
  Height = 397
  Caption = 'SATUAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 24
    Width = 28
    Height = 13
    Caption = 'NAME'
  end
  object Label3: TLabel
    Left = 72
    Top = 56
    Width = 52
    Height = 13
    Caption = 'DESKRIPSI'
  end
  object edtNama: TEdit
    Left = 152
    Top = 24
    Width = 225
    Height = 21
    TabOrder = 0
  end
  object btnSimpan: TButton
    Left = 144
    Top = 96
    Width = 59
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 1
    OnClick = btnSimpanClick
  end
  object btnUbah: TButton
    Left = 208
    Top = 96
    Width = 49
    Height = 33
    Caption = 'UBAH'
    TabOrder = 2
    OnClick = btnUbahClick
  end
  object DBGrid: TDBGrid
    Left = 64
    Top = 144
    Width = 321
    Height = 121
    DataSource = DataModule2.ds1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGridCellClick
  end
  object btnHapus: TButton
    Left = 264
    Top = 96
    Width = 57
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = btnHapusClick
  end
  object btnBatal: TButton
    Left = 328
    Top = 96
    Width = 49
    Height = 33
    Caption = 'BATAL'
    TabOrder = 5
    OnClick = btnBatalClick
  end
  object edtDeskripsi: TEdit
    Left = 152
    Top = 48
    Width = 225
    Height = 21
    TabOrder = 6
  end
end
