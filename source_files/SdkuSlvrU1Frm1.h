//---------------------------------------------------------------------------

#ifndef SdkuSlvrU1Frm1H
#define SdkuSlvrU1Frm1H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <System.ImageList.hpp>
#include <Vcl.ImgList.hpp>
//---------------------------------------------------------------------------
class TSudokuSlvrMainForm : public TForm
{
__published:	// IDE-managed Components
	TStaticText *STPole11;
	TStaticText *STPole12;
	TStaticText *STPole13;
	TStaticText *STPole14;
	TStaticText *STPole15;
	TStaticText *STPole16;
	TStaticText *STPole17;
	TStaticText *STPole18;
	TStaticText *STPole19;
	TStaticText *STPole21;
	TStaticText *STPole22;
	TStaticText *STPole23;
	TStaticText *STPole24;
	TStaticText *STPole25;
	TStaticText *STPole26;
	TStaticText *STPole27;
	TStaticText *STPole28;
	TStaticText *STPole29;
	TStaticText *STPole31;
	TStaticText *STPole32;
	TStaticText *STPole33;
	TStaticText *STPole34;
	TStaticText *STPole35;
	TStaticText *STPole36;
	TStaticText *STPole37;
	TStaticText *STPole38;
	TStaticText *STPole39;
	TStaticText *STPole41;
	TStaticText *STPole42;
	TStaticText *STPole43;
	TStaticText *STPole44;
	TStaticText *STPole45;
	TStaticText *STPole46;
	TStaticText *STPole47;
	TStaticText *STPole48;
	TStaticText *STPole49;
	TStaticText *STPole51;
	TStaticText *STPole52;
	TStaticText *STPole53;
	TStaticText *STPole54;
	TStaticText *STPole55;
	TStaticText *STPole56;
	TStaticText *STPole57;
	TStaticText *STPole58;
	TStaticText *STPole59;
	TStaticText *STPole61;
	TStaticText *STPole62;
	TStaticText *STPole63;
	TStaticText *STPole64;
	TStaticText *STPole65;
	TStaticText *STPole66;
	TStaticText *STPole67;
	TStaticText *STPole68;
	TStaticText *STPole69;
	TStaticText *STPole71;
	TStaticText *STPole72;
	TStaticText *STPole73;
	TStaticText *STPole74;
	TStaticText *STPole75;
	TStaticText *STPole76;
	TStaticText *STPole77;
	TStaticText *STPole78;
	TStaticText *STPole79;
	TStaticText *STPole81;
	TStaticText *STPole82;
	TStaticText *STPole83;
	TStaticText *STPole84;
	TStaticText *STPole85;
	TStaticText *STPole86;
	TStaticText *STPole87;
	TStaticText *STPole88;
	TStaticText *STPole89;
	TStaticText *STPole91;
	TStaticText *STPole92;
	TStaticText *STPole93;
	TStaticText *STPole94;
	TStaticText *STPole95;
	TStaticText *STPole96;
	TStaticText *STPole97;
	TStaticText *STPole98;
	TStaticText *STPole99;
	TShape *LiniaPoziomSekcjeGornaSrodek;
	TShape *LiniaPoziomSekcjeSrodekDolna;
	TShape *LiniaPionSekcjeLewaSrodek;
	TShape *LiniaPionSekcjeSrodekPrawa;
	TShape *LiniaPoziomOddzielajaca;
	TMemo *Memo1Komunikaty;
	TButton *Bttn1Reset;
	TButton *Bttn1UndoRedo;
	TBalloonHint *BalloonHint1;
	TImageList *ImageList1;
	TCheckBox *ChckBx1BezHintow;
	TPanel *Panel1;
	void __fastcall KliknietoPole(TObject *Sender);
	void __fastcall Bttn1ResetClick(TObject *Sender);
	void __fastcall Bttn1UndoRedoClick(TObject *Sender);
	void __fastcall ChckBx1BezHintowClick(TObject *Sender);

private:	// User declarations
public:		// User declarations
	__fastcall TSudokuSlvrMainForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TSudokuSlvrMainForm *SudokuSlvrMainForm;
//---------------------------------------------------------------------------
#endif
