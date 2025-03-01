unit U_fase4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  Tfrm_fase4 = class(TForm)
    Image1: TImage;
    lb_titulo: TLabel;
    lb_opcoes: TLabel;
    lb_per16: TLabel;
    lb_17: TLabel;
    lb_per18: TLabel;
    btn_enviar: TButton;
    btn_fechar1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    btn_voltar: TButton;
    lb_per15: TLabel;
    ComboBox5: TComboBox;
    procedure btn_voltarClick(Sender: TObject);
    procedure btn_fechar1Click(Sender: TObject);
    procedure btn_enviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_fase4: Tfrm_fase4;
  conj_A, conj_B, conj_C:array[0..5] of Integer;
  soma_conj_A, soma_conj_B, soma_conj_C:Integer;

implementation

{$R *.dfm}

uses U_fase3, U_loading, U_fase1, U_fase2, U_result;

procedure Tfrm_fase4.btn_enviarClick(Sender: TObject);
begin
  with frm_fase1 do
  begin
    conj_A[0] := StrToInt(ComboBox1.Items[ComboBox1.ItemIndex]);
    conj_A[1] := StrToInt(ComboBox3.Items[ComboBox3.ItemIndex]);
    conj_B[0] := StrToInt(ComboBox4.Items[ComboBox4.ItemIndex]);
    conj_C[0] := StrToInt(ComboBox2.Items[ComboBox2.ItemIndex]);
    conj_C[1] := StrToInt(ComboBox5.Items[ComboBox5.ItemIndex]);
  end;

  with frm_fase2 do
  begin
    conj_A[2] := StrToInt(ComboBox1.Items[ComboBox1.ItemIndex]);
    conj_A[3] := StrToInt(ComboBox4.Items[ComboBox4.ItemIndex]);
    conj_B[1] := StrToInt(ComboBox2.Items[ComboBox2.ItemIndex]);
    conj_B[2] := StrToInt(ComboBox5.Items[ComboBox5.ItemIndex]);
    conj_C[2] := StrToInt(ComboBox3.Items[ComboBox3.ItemIndex]);
  end;

  with frm_fase3 do
  begin
    conj_A[4] := StrToInt(ComboBox2.Items[ComboBox2.ItemIndex]);
    conj_B[3] := StrToInt(ComboBox1.Items[ComboBox1.ItemIndex]);
    conj_B[4] := StrToInt(ComboBox4.Items[ComboBox4.ItemIndex]);
    conj_C[3] := StrToInt(ComboBox3.Items[ComboBox3.ItemIndex]);
  end;

  conj_A[5] := StrToInt(ComboBox5.Items[ComboBox5.ItemIndex]);
  conj_B[5] := StrToInt(ComboBox2.Items[ComboBox2.ItemIndex]);
  conj_C[4] := StrToInt(ComboBox1.Items[ComboBox1.ItemIndex]);
  conj_C[5] := StrToInt(ComboBox3.Items[ComboBox3.ItemIndex]);

  frm_fase1.Close;
  frm_fase2.Close;
  frm_fase3.Close;

  frm_fase4.Visible := false;
  frm_resultado.ShowModal;

end;

procedure Tfrm_fase4.btn_fechar1Click(Sender: TObject);
begin
  loading.Close;
  frm_fase1.Close;
  frm_fase2.Close;
  frm_fase3.Close;
  frm_fase4.Close;
end;

procedure Tfrm_fase4.btn_voltarClick(Sender: TObject);
begin
  frm_fase4.visible := false;
  frm_fase3.visible := true;
end;

end.
