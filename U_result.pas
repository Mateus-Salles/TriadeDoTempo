unit U_result;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ColorGrd, Vcl.StdCtrls, U_fase4,
  Vcl.ExtCtrls;

type
  Tfrm_resultado = class(TForm)
    lb_importante: TLabel;
    lb_porc_importante: TLabel;
    lb_circunstancial: TLabel;
    lb_porc_circunstancial: TLabel;
    lb_urgente: TLabel;
    lb_porc_urgente: TLabel;
    Timer1: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_resultado: Tfrm_resultado;
  sum_A, sum_B, sum_C, sum_Total:Integer;
  porc_A, porc_B, porc_C:double;

implementation

{$R *.dfm}

procedure Tfrm_resultado.FormActivate(Sender: TObject);
var
  sum, i:integer;
begin
  sum := 0;

  with frm_fase4 do
  begin

    for i := 0 to 5 do
    begin
      sum := sum + conj_A[i];
    end;

    sum_A := sum;
    sum := 0;

    for i := 0 to 5 do
    begin
      sum := sum + conj_B[i];
    end;

    sum_B := sum;
    sum := 0;

    for i := 0 to 5 do
    begin
      sum := sum + conj_C[i];
    end;

  end;

  sum_C := sum;

  sum_Total := sum_C + sum_B + sum_A;

  porc_A := sum_A / sum_Total * 100;

  porc_B := sum_B / sum_Total * 100;

  porc_C := sum_C / sum_Total * 100;

  frm_fase4.Close;

  Timer1.Enabled := true;

end;

procedure Tfrm_resultado.Timer1Timer(Sender: TObject);
var
  cont, frac_A, frac_B, frac_C:integer;
  val_A, val_B, val_C:double;
begin
  frac_A := Trunc(porc_A / 10);
  frac_B := Trunc(porc_B / 10);
  frac_C := Trunc(porc_C / 10);

  val_A := 0;
  val_B := 0;
  val_C := 0;

  for cont := 0 to 9 do
  begin
    if cont = 9 then
    begin
      val_A := Trunc(porc_A);
      val_B := Trunc(porc_B);
      val_C := Trunc(porc_C);
    end
    else
    begin
      val_A := val_A + frac_A;
      val_B := val_B + frac_B;
      val_C := val_C + frac_C;
    end;

    lb_porc_importante.Caption := Format('%.1f', [val_B])+' %';
    lb_porc_urgente.Caption := Format('%.1f', [val_C])+' %';
    lb_porc_circunstancial.Caption := Format('%.1f', [val_A])+' %';
  end;

end;

end.
