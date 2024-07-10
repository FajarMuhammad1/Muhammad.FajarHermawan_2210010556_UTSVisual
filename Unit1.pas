unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtNama: TEdit;
    btnSimpan: TButton;
    btnUbah: TButton;
    DBGrid: TDBGrid;
    btnHapus: TButton;
    btnBatal: TButton;
    Label3: TLabel;
    edtDeskripsi: TEdit;
    procedure btnSimpanClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure btnHapusClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.btnSimpanClick(Sender: TObject);
begin
  if edtNama.Text = '' then
  begin
  ShowMessage('Nama satuan Tidak Boleh Kosong!');
  end else
  if DataModule2.ZQuery1.Locate('nama',edtNama.Text,[]) then
  begin
  ShowMessage('Nama satuan '+edtNama.Text+' Sudah Ada Didalam Sistem');
  end else
  Begin // simpan
    with DataModule2.ZQuery1 do
    begin
    SQL.Clear;
    SQL.Add('insert into satuan (nama,deskripsi) values(:nama, :deskripsi)');
    ParamByName('nama').AsString := edtNama.Text;
    ParamByName('deskripsi').AsString := edtDeskripsi.Text;
    ExecSQL ;
    SQL.Clear;
    SQL.Add('select * from satuan');
    Open;
    end;
  ShowMessage('Data Berhasil Disimpan!');
  end;
end;


procedure TForm1.btnUbahClick(Sender: TObject);
begin
  begin
  if edtNama.Text = '' then
  begin
    ShowMessage('Nama Satuan Tidak Boleh Kosong!');
  end
  else if not DataModule2.ZQuery1.Locate('nama', edtNama.Text, []) then
  begin
    ShowMessage('Nama Satuan ' + edtNama.Text + ' Tidak Ditemukan Dalam Sistem');
  end
  else
  begin
    // Update data
    with DataModule2.ZQuery1 do
    begin
      SQL.Clear;
      SQL.Add('update satuan set deskripsi = :deskripsi where nama = :nama');
      ParamByName('nama').AsString := edtNama.Text;
      ParamByName('deskripsi').AsString := edtDeskripsi.Text;
      ExecSQL;
      SQL.Clear;
      SQL.Add('select * from satuan');
      Open;
    end;
    ShowMessage('Data Berhasil Diubah!');
  end;
end;
end;

procedure TForm1.DBGridCellClick(Column: TColumn);
begin
  edtNama.Text := DataModule2.ZQuery1.FieldByName('nama').AsString;
  edtDeskripsi.Text := DataModule2.ZQuery1.FieldByName('deskripsi').AsString;
end;

procedure TForm1.btnHapusClick(Sender: TObject);
begin
begin
  if edtNama.Text = '' then
  begin
    ShowMessage('Nama Satuan Tidak Boleh Kosong!');
  end
  else if not DataModule2.ZQuery1.Locate('nama', edtNama.Text, []) then
  begin
    ShowMessage('Nama Satuan ' + edtNama.Text + ' Tidak Ditemukan Dalam Sistem');
  end
  else
  begin
    // Delete data
    with DataModule2.ZQuery1 do
    begin
      SQL.Clear;
      SQL.Add('delete from satuan where nama = :nama');
      ParamByName('nama').AsString := edtNama.Text;
      ExecSQL;
      SQL.Clear;
      SQL.Add('select * from satuan');
      Open;
    end;
    ShowMessage('Data Berhasil Dihapus!');
  end;
end;
end;

procedure TForm1.btnBatalClick(Sender: TObject);
begin
 edtNama.Text := '';
 edtDeskripsi.Text := '';
end;

end.
