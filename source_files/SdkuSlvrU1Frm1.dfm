object SudokuSlvrMainForm: TSudokuSlvrMainForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Sudoku Solving Helper by KTP ver.1.2'
  ClientHeight = 603
  ClientWidth = 445
  Color = clGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Courier New'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 14
  object LiniaPoziomSekcjeGornaSrodek: TShape
    Left = 8
    Top = 149
    Width = 429
    Height = 3
    Brush.Color = clRed
    Pen.Color = clRed
  end
  object LiniaPoziomSekcjeSrodekDolna: TShape
    Left = 8
    Top = 293
    Width = 429
    Height = 3
    Brush.Color = clRed
    Pen.Color = clRed
  end
  object LiniaPionSekcjeLewaSrodek: TShape
    Left = 149
    Top = 8
    Width = 3
    Height = 429
    Brush.Color = clRed
    Pen.Color = clRed
  end
  object LiniaPionSekcjeSrodekPrawa: TShape
    Left = 293
    Top = 8
    Width = 3
    Height = 429
    Brush.Color = clRed
    Pen.Color = clRed
  end
  object LiniaPoziomOddzielajaca: TShape
    Left = 0
    Top = 445
    Width = 445
    Height = 4
    Brush.Color = clRed
    Pen.Color = clRed
  end
  object STPole11: TStaticText
    Left = 8
    Top = 8
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole12: TStaticText
    Left = 56
    Top = 8
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole13: TStaticText
    Left = 104
    Top = 8
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole14: TStaticText
    Left = 152
    Top = 8
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole15: TStaticText
    Left = 200
    Top = 8
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole16: TStaticText
    Left = 248
    Top = 8
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole17: TStaticText
    Left = 296
    Top = 8
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 6
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole18: TStaticText
    Left = 344
    Top = 8
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 7
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole19: TStaticText
    Left = 392
    Top = 8
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 8
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole21: TStaticText
    Left = 8
    Top = 56
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 9
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole22: TStaticText
    Left = 56
    Top = 56
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 10
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole23: TStaticText
    Left = 104
    Top = 56
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 11
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole24: TStaticText
    Left = 152
    Top = 56
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 12
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole25: TStaticText
    Left = 200
    Top = 56
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 13
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole26: TStaticText
    Left = 248
    Top = 56
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 14
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole27: TStaticText
    Left = 296
    Top = 56
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 15
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole28: TStaticText
    Left = 344
    Top = 56
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 16
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole29: TStaticText
    Left = 392
    Top = 56
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 17
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole31: TStaticText
    Left = 8
    Top = 104
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 18
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole32: TStaticText
    Left = 56
    Top = 104
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 19
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole33: TStaticText
    Left = 104
    Top = 104
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 20
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole34: TStaticText
    Left = 152
    Top = 104
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 21
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole35: TStaticText
    Left = 200
    Top = 104
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 22
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole36: TStaticText
    Left = 248
    Top = 104
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 23
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole37: TStaticText
    Left = 296
    Top = 104
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 24
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole38: TStaticText
    Left = 344
    Top = 104
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 25
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole39: TStaticText
    Left = 392
    Top = 104
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 26
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole41: TStaticText
    Left = 8
    Top = 152
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 27
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole42: TStaticText
    Left = 56
    Top = 152
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 28
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole43: TStaticText
    Left = 104
    Top = 152
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 29
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole44: TStaticText
    Left = 152
    Top = 152
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 30
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole45: TStaticText
    Left = 200
    Top = 152
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 31
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole46: TStaticText
    Left = 248
    Top = 152
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 32
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole47: TStaticText
    Left = 296
    Top = 152
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 33
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole48: TStaticText
    Left = 344
    Top = 152
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 34
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole49: TStaticText
    Left = 392
    Top = 152
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 35
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole51: TStaticText
    Left = 8
    Top = 200
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 36
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole52: TStaticText
    Left = 56
    Top = 200
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 37
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole53: TStaticText
    Left = 104
    Top = 200
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 38
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole54: TStaticText
    Left = 152
    Top = 200
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 39
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole55: TStaticText
    Left = 200
    Top = 200
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 40
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole56: TStaticText
    Left = 248
    Top = 200
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 41
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole57: TStaticText
    Left = 296
    Top = 200
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 42
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole58: TStaticText
    Left = 344
    Top = 200
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 43
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole59: TStaticText
    Left = 392
    Top = 200
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 44
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole61: TStaticText
    Left = 8
    Top = 248
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 45
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole62: TStaticText
    Left = 56
    Top = 248
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 46
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole63: TStaticText
    Left = 104
    Top = 248
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 47
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole64: TStaticText
    Left = 152
    Top = 248
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 48
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole65: TStaticText
    Left = 200
    Top = 248
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 49
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole66: TStaticText
    Left = 248
    Top = 248
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 50
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole67: TStaticText
    Left = 296
    Top = 248
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 51
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole68: TStaticText
    Left = 344
    Top = 248
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 52
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole69: TStaticText
    Left = 392
    Top = 248
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 53
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole71: TStaticText
    Left = 8
    Top = 296
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 54
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole72: TStaticText
    Left = 56
    Top = 296
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 55
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole73: TStaticText
    Left = 104
    Top = 296
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 56
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole74: TStaticText
    Left = 152
    Top = 296
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 57
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole75: TStaticText
    Left = 200
    Top = 296
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 58
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole76: TStaticText
    Left = 248
    Top = 296
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 59
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole77: TStaticText
    Left = 296
    Top = 296
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 60
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole78: TStaticText
    Left = 344
    Top = 296
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 61
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole79: TStaticText
    Left = 392
    Top = 296
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 62
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole81: TStaticText
    Left = 8
    Top = 344
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 63
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole82: TStaticText
    Left = 56
    Top = 344
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 64
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole83: TStaticText
    Left = 104
    Top = 344
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 65
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole84: TStaticText
    Left = 152
    Top = 344
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 66
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole85: TStaticText
    Left = 200
    Top = 344
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 67
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole86: TStaticText
    Left = 248
    Top = 344
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 68
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole87: TStaticText
    Left = 296
    Top = 344
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 69
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole88: TStaticText
    Left = 344
    Top = 344
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 70
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole89: TStaticText
    Left = 392
    Top = 344
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 71
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole91: TStaticText
    Left = 8
    Top = 392
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 72
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole92: TStaticText
    Left = 56
    Top = 392
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 73
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole93: TStaticText
    Left = 104
    Top = 392
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 74
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole94: TStaticText
    Left = 152
    Top = 392
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 75
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole95: TStaticText
    Left = 200
    Top = 392
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 76
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole96: TStaticText
    Left = 248
    Top = 392
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 77
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole97: TStaticText
    Left = 296
    Top = 392
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 78
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole98: TStaticText
    Left = 344
    Top = 392
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 79
    Transparent = False
    OnClick = KliknietoPole
  end
  object STPole99: TStaticText
    Left = 392
    Top = 392
    Width = 45
    Height = 45
    Hint = 'Liczby mo'#380'liwe w danym polu|Kliknij kt'#243'r'#261#347' by wstawi'#263' do pola|0'
    CustomHint = BalloonHint1
    Alignment = taCenter
    AutoSize = False
    Caption = '1 2 3 4 5 6 7 8 9'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 80
    Transparent = False
    OnClick = KliknietoPole
  end
  object Memo1Komunikaty: TMemo
    Left = 8
    Top = 457
    Width = 429
    Height = 105
    Hint = 
      'Tu b'#281'd'#261' komunikaty o liczbach|jedynych w swoich wierszach / kolu' +
      'mnach /sekcjach|0'
    CustomHint = BalloonHint1
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    Lines.Strings = (
      'Memo1Komunikaty')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 81
    WantTabs = True
  end
  object Bttn1Reset: TButton
    Left = 56
    Top = 570
    Width = 93
    Height = 25
    Hint = 
      'Czy'#347'ci plansz'#281' i podpowiedzi|Mo'#380'liwe undo planszy (bez undo podp' +
      'owiedzi)|0'
    CustomHint = BalloonHint1
    Caption = 'R E S E T'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Arial Black'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 82
    OnClick = Bttn1ResetClick
  end
  object Bttn1UndoRedo: TButton
    Left = 296
    Top = 570
    Width = 93
    Height = 25
    Hint = 
      'Cofni'#281'cie ostatniego ruchu|I cofni'#281'cie cofni'#281'cia ostatniego ruch' +
      'u|0'
    CustomHint = BalloonHint1
    Caption = 'UNDO / REDO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Arial Black'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 83
    OnClick = Bttn1UndoRedoClick
  end
  object Panel1: TPanel
    Left = 170
    Top = 570
    Width = 105
    Height = 25
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 84
    object ChckBx1BezHintow: TCheckBox
      Left = 1
      Top = 0
      Width = 104
      Height = 25
      Hint = 'W'#322#261'cz/Wy'#322#261'cz podpowiedzi|czyli te g'#322'upie denerwuj'#261'ce dymki|0'
      CustomHint = BalloonHint1
      Caption = 'Wy'#322#261'cz dymki'
      Color = clMoneyGreen
      ParentColor = False
      TabOrder = 0
      OnClick = ChckBx1BezHintowClick
    end
  end
  object BalloonHint1: TBalloonHint
    Images = ImageList1
    Left = 65528
    Top = 568
  end
  object ImageList1: TImageList
    BkColor = clYellow
    Height = 20
    Width = 20
    Left = 24
    Top = 568
    Bitmap = {
      494C0101010020002C0014001400FFFF0000FF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000500000001400000001002000000000000019
      00000000000000000000000000000000000000FFFF0000FFFF000000FF000000
      FF000000FF0000FFFF00002FFF0000D8FF0000D8FF0000D8FF0000D8FF0000D8
      FF0000D8FF00005BFF0000D8FF0000D8FF0000D8FF0000D8FF0000D8FF0000D8
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF000000FF0000FF
      FF000000FF0000FFFF00002FFF0000D8FF0000D8FF0000D8FF0000D8FF0000D8
      FF0000D8FF00005BFF0000D8FF0000D8FF0000D8FF0000D8FF0000D8FF0000D8
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF000000FF000000
      FF000000FF0000FFFF00002FFF0000D8FF0000D8FF0000D8FF0000D8FF0000D8
      FF0000D8FF00005BFF0000D8FF0000D8FF0000D8FF0000D8FF0000D8FF0000D8
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF000000FF0000FF
      FF0000FFFF0000FFFF00002FFF0000D8FF0000D8FF0000D8FF0000D8FF0000D8
      FF0000D8FF00005BFF0000D8FF0000D8FF0000D8FF0000D8FF0000D8FF0000D8
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF000000FF000000
      FF000000FF0000FFFF00002FFF0000D8FF0000D8FF0000D8FF0000D8FF0000D8
      FF0000D8FF00005BFF0000D8FF0000D8FF0000D8FF0000D8FF0000D8FF0000D8
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00002FFF0000D8FF0000D8FF0000D8FF0000D8FF0000D8
      FF0000D8FF00005BFF0000D8FF0000D8FF0000D8FF0000D8FF0000D8FF0000D8
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF00000EFF00002FFF00002FFF00002FFF00002FFF00002F
      FF00002FFF00002AFF00005BFF00005BFF00005BFF00005BFF00005BFF00005B
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF000000FF0000FFFF000000FF0000FFFF0000FFFF000000FF000000FF000000
      FF0000FFFF00002FFF0000D8FF0000D8FF0000D8FF0000D8FF0000D8FF0000D8
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF000000FF0000FFFF000000FF0000FFFF0000FFFF0000FFFF0000FFFF000000
      FF0000FFFF00002FFF0000D8FF0000D8FF0000D8FF0000D8FF0000D8FF0000D8
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF000000FF000000
      FF000000FF0000FFFF000000FF0000FFFF0000FFFF000000FF000000FF000000
      FF0000FFFF00002FFF0000D8FF0000D8FF0000D8FF0000D8FF0000D8FF0000D8
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF000000FF0000FF
      FF000000FF0000FFFF000000FF0000FFFF0000FFFF000000FF0000FFFF0000FF
      FF0000FFFF00002FFF0000D8FF0000D8FF0000D8FF0000D8FF0000D8FF0000D8
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF000000FF0000FF
      FF0000FFFF0000FFFF000000FF0000FFFF0000FFFF000000FF000000FF000000
      FF0000FFFF00002FFF0000D8FF0000D8FF0000D8FF0000D8FF0000D8FF0000D8
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000000FF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00002FFF0000D8FF0000D8FF0000D8FF0000D8FF0000D8FF0000D8
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF00000EFF00002FFF00002FFF00002FFF00002FFF00002FFF00002F
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF000000FF000000
      FF000000FF0000FFFF000000FF0000FFFF0000FFFF000000FF000000FF000000
      FF0000FFFF000000FF0000FFFF0000FFFF000000FF000000FF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF000000
      FF0000FFFF0000FFFF000000FF0000FFFF0000FFFF0000FFFF000000FF0000FF
      FF0000FFFF000000FF0000FFFF0000FFFF0000FFFF0000FFFF000000FF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF000000
      FF0000FFFF0000FFFF000000FF0000FFFF0000FFFF0000FFFF0000FFFF000000
      FF0000FFFF000000FF0000FFFF0000FFFF0000FFFF000000FF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF000000FF000000
      FF0000FFFF0000FFFF000000FF0000FFFF0000FFFF000000FF0000FFFF000000
      FF0000FFFF000000FF0000FFFF0000FFFF0000FFFF0000FFFF000000FF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF000000
      FF0000FFFF0000FFFF000000FF0000FFFF0000FFFF0000FFFF000000FF0000FF
      FF0000FFFF000000FF0000FFFF0000FFFF000000FF000000FF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000000FF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000050000000140000000100010000000000F00000000000000000000000
      000000000000000000000000FFFFFF00C40000000000000000000000D4000000
      0000000000000000C40000000000000000000000DC0000000000000000000000
      C40000000000000000000000FC00000000000000000000000000000000000000
      00000000F58800000000000000000000F5E800000000000000000000C5880000
      0000000000000000D5B800000000000000000000DD8800000000000000000000
      FDF800000000000000000000000000000000000000000000C58B300000000000
      00000000EDDBD0000000000000000000EDEBB0000000000000000000CDABD000
      0000000000000000EDDB30000000000000000000FDFBF0000000000000000000
      00000000000000000000000000000000000000000000}
  end
end
