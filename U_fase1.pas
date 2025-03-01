unit U_fase1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage, U_fase2,
  Vcl.ExtCtrls;

type
  Tfrm_fase1 = class(TForm)
    Image1: TImage;
    lb_titulo: TLabel;
    lb_opcoes: TLabel;
    lb_per1: TLabel;
    lb_per2: TLabel;
    lb_per3: TLabel;
    lb_per4: TLabel;
    lb_per5: TLabel;
    btn_prox1: TButton;
    btn_fechar1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    procedure btn_prox1Click(Sender: TObject);
    procedure btn_fechar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_fase1: Tfrm_fase1;

implementation

{$R *.dfm}

uses U_loading, U_fase3, U_fase4;

procedure Tfrm_fase1.btn_fechar1Click(Sender: TObject);
begin
  loading.Close;
  frm_fase1.Close;
  if frm_fase2.Enabled then
    frm_fase2.Close;
  if frm_fase3.Enabled then
    frm_fase3.Close;
  if frm_fase4.Enabled then
    frm_fase4.Close;
end;

procedure Tfrm_fase1.btn_prox1Click(Sender: TObject);
begin
  frm_fase1.Visible := false;
  if frm_fase2.Enabled = false then
    frm_fase2.ShowModal
  else
    frm_fase2.visible := true;

end;


end.
