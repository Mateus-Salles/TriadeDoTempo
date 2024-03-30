unit U_loading;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, U_fase1,
  Vcl.Imaging.pngimage;

type
  Tloading = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    ProgressBar: TProgressBar;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  loading: Tloading;

implementation

{$R *.dfm}

uses U_fase2, U_fase3, U_fase4;

procedure Tloading.Timer1Timer(Sender: TObject);
begin
  ProgressBar.Position := ProgressBar.Position + 2;

  if ProgressBar.Position = 100 then
  begin
    Timer1.Enabled := false;
    loading.Visible := false;
    frm_fase1.ShowModal;

    loading.Close;
  end;

end;

end.
