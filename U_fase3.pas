unit U_fase3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage, U_fase4, U_fase2,
  Vcl.ExtCtrls;

type
  Tfrm_fase3 = class(TForm)
    Image1: TImage;
    lb_titulo: TLabel;
    lb_opcoes: TLabel;
    lb_per11: TLabel;
    lb_per12: TLabel;
    lb_per13: TLabel;
    lb_per14: TLabel;
    btn_prox1: TButton;
    btn_fechar1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    btn_voltar: TButton;
    procedure btn_voltarClick(Sender: TObject);
    procedure btn_prox1Click(Sender: TObject);
    procedure btn_fechar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_fase3: Tfrm_fase3;

implementation

{$R *.dfm}

uses U_loading, U_fase1;

procedure Tfrm_fase3.btn_fechar1Click(Sender: TObject);
begin
  loading.Close;
  frm_fase1.Close;
  frm_fase2.Close;
  frm_fase3.Close;
  if frm_fase4.Enabled then
    frm_fase4.Close;
end;

procedure Tfrm_fase3.btn_prox1Click(Sender: TObject);
begin
  frm_fase3.visible := false;
  if frm_fase4.Enabled then
    frm_fase4.Visible := true
  else
    frm_fase4.ShowModal;
end;

procedure Tfrm_fase3.btn_voltarClick(Sender: TObject);
begin
  frm_fase3.Visible := false;
  frm_fase2.visible := true;
end;

end.
