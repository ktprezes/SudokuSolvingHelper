//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "SdkuSlvrU1Frm1.h"
#include "SdkuSlvrDtaLogic.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"

#define CRLF "\r\n"

//#define DEBUG_KTP
#undef DEBUG_KTP


TSudokuSlvrMainForm *SudokuSlvrMainForm;

//plansza do gry w Sudoku u¿ywane s¹ tylko pola [1..9][1..9]
//tak zdefiniowa³em, ¿eby ³atwiej by³o ogarniaæ indeksy i numery pól
//np pole 21 <=> [2][1], mo¿liwe numery pól 11..19, 21..29, ..., 91..99
//u¿ywam dwóch plansz, ¿eby móc zrobiæ undo/redo po przypadkowym ruchu
TPlanszaSudoku9x9 Plansza1, Plansza2, *PlanszaAktualna, *PlanszaRezerwowa;



//---------------------------------------------------------------------------
__fastcall TSudokuSlvrMainForm::TSudokuSlvrMainForm(TComponent* Owner): TForm(Owner)
{

#ifdef DEBUG_KTP
	String s;
	s="";
#endif DEBUG_KTP

	int wiersz, kol;

#ifdef DEBUG_KTP
//wyœwietlamy indeksy tablicy Controls, pod którymi NIE s¹ TStaticTexty maj¹ce przedstawiaæ pola
	for(int i=0; i<ControlCount; i++){
		if (!AnsiPos("STPole",(Controls[i])->Name))
			s = s+IntToStr((int)i)+" ";
	};//for
	ShowMessage("Te kontrolki to NIE pola sudoku: "+s);
#endif DEBUG_KTP

PlanszaAktualna =&Plansza1;
PlanszaRezerwowa=&Plansza2;

//szukamy TStaticTextów o nazwach "STPoleXX" i po nazwach przypisujemy je do pól Planszy
for(int i=0; i<ControlCount; i++){
	if (AnsiPos("STPole",(Controls[i])->Name)) {
		wiersz = StrToInt((String)(Controls[i])->Name[7]);
		kol    = StrToInt((String)(Controls[i])->Name[8]);
		PlanszaAktualna->PrzypiszWin(wiersz,kol,Controls[i]);
	}
};//for

#ifdef DEBUG_KTP
	s="Pola bez przypisanych okienek: ";
	for (wiersz =1; wiersz<10;wiersz++)
		for (kol=1; kol<10; kol++){
			if( !(PlanszaAktualna->GetWin(wiersz,kol)))
				s+= IntToStr((int)wiersz)+" "+IntToStr((int)kol)+", ";
		};//for
	ShowMessage(s);
#endif DEBUG_KTP

	PlanszaAktualna->AktualizujWin();
	(*PlanszaRezerwowa)=(*PlanszaAktualna); //na dobry pocz¹tek obie s¹ taie same
										//uwaga: kopiujemy _plansze_, NIE same wskaŸniki
                                        //po to przeci¹¿yliœmy '=' dla plansz
	Memo1Komunikaty->Lines->Clear();
} //__fastcall TSudokuSlvrMainForm::TSudokuSlvrMainForm(TComponent* Owner)


//---------------------------------------------------------------------------
void __fastcall TSudokuSlvrMainForm::KliknietoPole(TObject *Sender)
{
	String s; //na komunikaty wstawiane do Memo1Komunikaty
	TPoint P, CurPos,  //CurPos - pozycja kursora we wspó³rzêdnych ekranowych - brana z myszy
			  RelPos;  //RelPos - relatywna pozycja kursora w klikniêtym polu w pikselach
	int i, NrCzesciPola; //iterator i jak¹ liczbê na polu klikniêto: 0 -¿adnej, 1..9 - któr¹œ

	int wiersz, kol, sekcja;

	TControl *KliknietaKontrolkaNaPlanszy, *C;

	KliknietaKontrolkaNaPlanszy =this; //domyœlnie - sama plansza
	CurPos=Mouse->CursorPos;
	NrCzesciPola = 0;   // na pocz¹tku nie wybrano ¿adnej czêœci pola
						// wybrane wartoœci to 1..9

	// sprawdzamy w które pole na planszy klikniêto
	// i w któr¹ czêœæ pola tzn 1..9
	// wyjœcie tego kodu: KliknietaKontrolkaNaPlanszy, NrCzesciPola;
	for (i = 0; i < ControlCount; i++) {
		C=Controls[i];
		if ((CurPos.x >= GetClientOrigin().x + C->Left)&&\
			(CurPos.x  < GetClientOrigin().x + C->Left + C->Width)&&\
			(CurPos.y >= GetClientOrigin().y + C->Top)&&\
			(CurPos.y  < GetClientOrigin().y + C->Top + C->Height)) {

			KliknietaKontrolkaNaPlanszy=C;
			RelPos.x = CurPos.x - (GetClientOrigin().x + C->Left);
			RelPos.y = CurPos.y - (GetClientOrigin().y + C->Top);

			NrCzesciPola = 3*(div((int)RelPos.y,(int)(C->Height/3)).quot) + div((int)RelPos.x,(int)(C->Width/3)).quot + 1;

			break;
		}
	}

	if ((AnsiPos("STPole",KliknietaKontrolkaNaPlanszy->Name)) && (NrCzesciPola>0)&&(NrCzesciPola<10)) { //jest sens aktualizowaæ, gdy kliknieto pole
		wiersz = StrToInt((String)KliknietaKontrolkaNaPlanszy->Name[7]);
		kol    = StrToInt((String)KliknietaKontrolkaNaPlanszy->Name[8]);

		//przed zmianami zapamiêtujemy stan planszy aktualnej w rezerwowej - bêdziemy mogli zrobiæ undo :)
		//poprzedni stan PlanszyRezerwowej nadpisujemy now¹ wartoœci¹
		//byæ mo¿e kiedyœ zamiast dwóch zmiennych zrobiê tablicê lub listê plansz,
		//by zwiêkszyæ iloœæ poziomów undo
        //UWAGA!!! kopiujemy plansze, a NIE wskaŸniki
		(*PlanszaRezerwowa) = (*PlanszaAktualna);

		PlanszaAktualna->UstawGdyMozliwe(wiersz,kol,NrCzesciPola);
		PlanszaAktualna->AktualizujWin();
	};//if kliknieta kontrolka pola

	//sprawdzamy, czy w jakimœ wierszu / kolumnie / sekcji 3x3 jest jakaœ 'samotna mo¿liwa liczba n"
	//czyli taka, która jest mo¿liwa tylko w jednym polu tego wiersza / kolumny / sekcji 3x3
	//na razie tylko podpowiadamy pierwsz¹ tak¹ z wiersza / kolumny / sekcji 3x3, ¿e jest
	//niech cz³owiek sam zdecyduje czy chce klikn¹æ j¹, czy coœ innego
	s ="";
	for ( wiersz =1;wiersz <10; wiersz++){
		for (int n=1; n<10; n++){
			if ((i=PlanszaAktualna->CzySamotneWWierszu(wiersz, n))>0){
				s+="W wierszu:  "+IntToStr((int)wiersz)+", w polu: "+IntToStr((int)i)+" jedyna w tym wierszu liczba: "+IntToStr((int)n) +CRLF;
//				break;
			};//if
		}; //for (n) - sprawdzana liczba
	};//for (wiersz)

	for ( kol =1;kol <10; kol++){
		for (int n=1; n<10; n++){
			if ((i=PlanszaAktualna->CzySamotneWKolumnie(kol, n))>0){
				s+="W kolumnie: "+IntToStr((int)kol)+", w polu: "+IntToStr((int)i)+" jedyna w tej kolumnie liczba: "+IntToStr((int)n)+ CRLF;
//				break;
			};//if
		}; //for (n) - sprawdzana liczba
	};//for (wiersz)

	for ( sekcja =1;sekcja <10; sekcja++){
		for (int n=1; n<10; n++){
			if ((i=PlanszaAktualna->CzySamotneWSekcji3x3(sekcja, n))>0){
				s+="W sekcji:   "+IntToStr((int)sekcja)+", w polu: "+IntToStr((int)i)+" jedyna w tej sekcji liczba: "+IntToStr((int)n)+ CRLF;
//				break;
			};//if
		}; //for (n) - sprawdzana liczba
	};//for (wiersz)

	if(s!="") {
		if(Memo1Komunikaty->Text!="")
			s+="----------\r\n";

		Memo1Komunikaty->Lines->Insert(0,s);
		Memo1Komunikaty->SelStart =0;
		Memo1Komunikaty->SelLength=0;
		Memo1Komunikaty->Perform(EM_SCROLLCARET, 0, 0);
	};//if(s!="")

}; //void __fastcall TSudokuSlvrMainForm::KliknietoPole(TObject *Sender)
//---------------------------------------------------------------------------


void __fastcall TSudokuSlvrMainForm::Bttn1ResetClick(TObject *Sender)
{
	PlanszaAktualna->Czysc();
	Memo1Komunikaty->Clear();
};//void __fastcall TSudokuSlvrMainForm::Bttn1ResetClick(TObject *Sender)
//---------------------------------------------------------------------------


void __fastcall TSudokuSlvrMainForm::Bttn1UndoRedoClick(TObject *Sender)
{
	TPlanszaSudoku9x9 *temp;

	//tu wystarczy kopiowaæ wskaŸniki, a nie plansze
	temp =PlanszaAktualna;
	PlanszaAktualna=PlanszaRezerwowa;
	PlanszaRezerwowa = temp;

	//przywróæ poprzedni stan na ekranie
	PlanszaAktualna->AktualizujWin();
};//void __fastcall TSudokuSlvrMainForm::Bttn1UndoRedoClick(TObject *Sender)
//---------------------------------------------------------------------------

void __fastcall TSudokuSlvrMainForm::ChckBx1BezHintowClick(TObject *Sender)
{
	if((ChckBx1BezHintow->State)==cbUnchecked) {
//		ShowMessage("wy³¹czony - dymki s¹");
		Application->ShowHint = true;
		SudokuSlvrMainForm->ShowHint = true;
	}
	else {
//        ShowMessage("w³¹czony - dymków brak");
		BalloonHint1->HideHint(ChckBx1BezHintow);
		Application->ShowHint = false;
		SudokuSlvrMainForm->ShowHint = false;
	};//if cbChecked
};//void __fastcall TSudokuSlvrMainForm::ChckBx1BezHintowClick(TObject *Sender)
//---------------------------------------------------------------------------

