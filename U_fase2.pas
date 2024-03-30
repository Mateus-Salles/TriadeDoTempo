unit U_fase2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  Tfrm_fase2 = class(TForm)
    Image1: TImage;
    lb_titulo: TLabel;
    lb_opcoes: TLabel;
    lb_per6: TLabel;
    lb_per7: TLabel;
    lb_per8: TLabel;
    lb_per9: TLabel;
    lb_per10: TLabel;
    btn_prox1: TButton;
    btn_fechar1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    btn_voltar: TButton;
    procedure btn_prox1Click(Sender: TObject);
    procedure btn_voltarClick(Sender: TObject);
    procedure btn_fechar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_fase2: Tfrm_fase2;

implementation

{$R *.dfm}

uses U_fase3, U_fase1, U_loading, U_fase4;

procedure Tfrm_fase2.btn_fechar1Click(Sender: TObject);
begin
  loading.Close;
  frm_fase1.Close;
  frm_fase2.Close;
  if frm_fase3.Enabled then
    frm_fase3.Close;
  if frm_fase4.Enabled then
    frm_fase4.Close;
end;

procedure Tfrm_fase2.btn_prox1Click(Sender: TObject);
begin
  frm_fase2.Visible := false;
  if frm_fase3.Enabled then
    frm_fase3.Visible := true
  else
    frm_fase3.ShowModal;
end;

procedure Tfrm_fase2.btn_voltarClick(Sender: TObject);
begin
  frm_fase2.visible := false;
  frm_fase1.visible := true;
end;

end.
