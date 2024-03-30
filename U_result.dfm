object frm_resultado: Tfrm_resultado
  Left = 537
  Top = 219
  Caption = 'Resultado'
  ClientHeight = 320
  ClientWidth = 446
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 23
  object lb_importante: TLabel
    Left = 160
    Top = 24
    Width = 114
    Height = 23
    Caption = 'IMPORTANTE'
  end
  object lb_porc_importante: TLabel
    Left = 208
    Top = 80
    Width = 35
    Height = 23
    Caption = '0 %'
  end
  object lb_circunstancial: TLabel
    Left = 32
    Top = 248
    Width = 150
    Height = 23
    Caption = 'CIRCUNSTANCIAL'
  end
  object lb_porc_circunstancial: TLabel
    Left = 80
    Top = 192
    Width = 35
    Height = 23
    Caption = '0 %'
  end
  object lb_urgente: TLabel
    Left = 278
    Top = 248
    Width = 83
    Height = 23
    Caption = 'URGENTE'
  end
  object lb_porc_urgente: TLabel
    Left = 302
    Top = 192
    Width = 35
    Height = 23
    Caption = '0 %'
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer1Timer
    Left = 360
    Top = 56
  end
end
