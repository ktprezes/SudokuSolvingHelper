//---------------------------------------------------------------------------

#pragma hdrstop
#pragma package(smart_init)

#include <vcl.h>

//#define DEBUG_KTP
#undef DEBUG_KTP


#include "SdkuSlvrDtaLogic.h"


//---------------------------------------------------------------------------
//clasa TPoleSudoku - definicje metod

TPoleSudoku::TPoleSudoku() {
	wartosc =0; // na pocz¹tku  wartoœæ nieokreœlona - ¿adna z 1..9
	//DODAÆ INICJACJÊ "mo¿liwe wartoœci" na wszystkie z 1..9

	mozliwe_wartosci[0]=0; //tego i tak nieu¿ywamy
	for (int i =1; i<10; i++)  //okreœlono wartoœæ => mo¿liwe_wartoœci wszystkie z 1..9
		mozliwe_wartosci[i]=1;

	return;
}; //TPoleSudoku::TPoleSudoku


TPoleSudoku::TPoleSudoku(int n) {   //konstruktor pola z od razu okreœlon¹ wartoœci¹
									//ustawia  na dan¹ wartoœæ jeœli ona =1..9
									//jeœli inna - dzia³a jak konstruktor bezparamtrowy

	if ((n<1) || (n>9)) {  //gdy z³a wartoœæ n (inna ni¿ 1..9) dzia³aj jak konstr.bezparametrowy
		TPoleSudoku();
		return;
	}; //if (z³a wartoœæ n)

	//tu przechodzimy, jeœli n prawid³owe =1..9

	wartosc = n;

	for (int i =0; i<10; i++)  //okreœlono wartoœæ => mo¿liwe_wartoœci ¿adne z 1..9
		mozliwe_wartosci[i]=0;

	return;
}; //TPoleSudoku::TPoleSudoku (int)


//chcemy móc kopiowaæ pole sudoku do innego - wartoœæ _i_ mo¿liwe wartoœci
TPoleSudoku & TPoleSudoku::operator = (const TPoleSudoku & kopiowane_pole){

	this->wartosc = kopiowane_pole.wartosc;
	for (int i=0; i<10; i++)
		this->mozliwe_wartosci[i] = kopiowane_pole.mozliwe_wartosci[i];

	return *this;
};//TPoleSudoku & TPoleSudoku::operator = (const TPoleSudoku &){


// gdy podana wartoœæ n=1..9, ustawia wartoœæ pola sudoku _i_ ustawia mo¿liwe wartoœci na ¿adne z 1..9
// gdy podana wartoœæ n=0 - zeruje wartoœæ i ustawia mo¿liwe wartoœci na ka¿de z 1..9
// gdy podana z³a wartoœæ - inna ni¿ 0..9, nie robi nic;
// zwraca - gdy OK ustawion¹ wartoœæ, gdy b³¹d 0
int TPoleSudoku::Set (int n) {
	if (n==0) {
		wartosc =n;
		for (int i =1; i<10; i++)  //okreœlono wartoœæ 0 => mo¿liwe_wartoœci wszystkie z 1..9
			mozliwe_wartosci[i]=1;
		return wartosc;
	}// if(n==0) - wyzerowanie wartoœci i ustawienie mo¿liwe wartoœci na wszystkie z 1..9

	if ((n<1) || (n>9)) {  //gdy tu wartoœæ n inna ni¿ 1..9 nie rób nic
		return 0;
	}; //if (z³a wartoœæ n)

	//tu przechodzimy, jeœli n =1..9
	wartosc = n;

	for (int i =0; i<10; i++)  //okreœlono wartoœæ => mo¿liwe_wartoœci ¿adne z 1..9
		mozliwe_wartosci[i]=0;

	return wartosc;
}; //void TPoleSudoku::Set(int)


// pobiera wartoœæ pola sudoku
int TPoleSudoku::Get() {
	return wartosc;

}; //int TPoleSudoku::Get()


//wejscie: nr mo¿liwy w danym polu =1..9
//wyjœcie: wartoœæ jest mo¿liwa => =1; nie jest mo¿liwa =0;
//gdy podano liczbê inn¹ ni¿ 1..9 zwraca =0 <=> nie jest mo¿liwa
int TPoleSudoku::MozliweCzy(int n){
	if ((n<1) || (n>9))
		return 0;

	return mozliwe_wartosci[n];
}; //int TPoleSudoku::MozliweCzy(int)


//zwraca iloœæ mo¿liwych wartoœci danego pola
//najciekawszy jest przypadek =1 - wtedy mo¿na ustawiæ wartoœæ pola
//na tê jedyn¹ mo¿liw¹ wartoœæ
int TPoleSudoku::MozliweIle(){
	int suma=0;
	for(int i=1;i<10;i++)
		suma += mozliwe_wartosci[i];

	return suma;
}; //int TPoleSudoku::MozliweIle()


// dodaje wartoœæ n do mo¿liwych w danym polu
// zwraca iloœæ wartoœci mo¿liwych po dodaniu n
// prawid³owe n=1..9;
//inna wartoœæ - nie jest dodana
// zwraca iloœæ mo¿liwych wartoœci jaka by³a ju¿ wczeœniej
int TPoleSudoku::MozliweDodaj(int n) {
	if ((n>=1) && (n<=9))
		mozliwe_wartosci[n]=1;

	return MozliweIle();
}; //int TPoleSudoku::MozliweDodaj (int)


// usuwa wartoœæ n z mo¿liwych w danym polu
// zwraca iloœæ wartoœci mo¿liwych po usuniêciu n
// prawid³owe n=1..9;
// inna wartoœæ - nie jest usuwana
// zwraca iloœæ mo¿liwych wartoœci jaka by³a ju¿ wczeœniej
int TPoleSudoku::MozliweUsun (int n){
	if ((n>=1) && (n<=9))
		mozliwe_wartosci[n]=0;

	return MozliweIle();
}; //int TPoleSudoku::MozliweUsun(int)


//---------------------------------------------------------------------------
//clasa TPlanszaSudoku9x9 - definicje metod

//konstruktor TPlanszaSudoku9x9
TPlanszaSudoku9x9::TPlanszaSudoku9x9() {
	TPoleWin PoleWin[10][10];
	for (int i=0; i<10;i++)
		for (int j=0; j<10; j++){
            PoleWin[i][j].Okno=(TControl *)NULL;
		};
	return;
}; //TPlanszaSudoku9x9::TPlanszaSudoku9x9()


//przypisz okno do pola sudoku
int TPlanszaSudoku9x9::PrzypiszWin(int wiersz, int kol, TControl *win){
	if ((wiersz <1) || (wiersz >9))
		return 0;
	if ((kol <1) || (kol >9))
		return 0;

	PoleWin[wiersz][kol].Okno=win;
	return PoleWin[wiersz][kol].Pole.Get();
}; //int PrzypiszWin(int, int, TControl*) przypisz okno do pola sudoku, zwróæ wartoœæ pola


//zwraca wskaŸnik do przypisanego okienka danego pola
//potrzebne np do sprawdzenia, czy all pola maj¹ przypisane okienka
TControl *TPlanszaSudoku9x9::GetWin(int wiersz, int kol){
	return PoleWin[wiersz][kol].Okno;
};//TControl *TPlanszaSudoku9x9::GetWin(int wiersz, int kol){

//czyœci plansze - ustawia wszystkie pola na wartoœæ =0
//to jednoczeœnie ustawia "mo¿liwe wartoœci" na wszystkie z 1..9
//(patrz TPoleSudoku.Set(0)
//aktualizuje przypisane do pól kontrolki ekranowe
void TPlanszaSudoku9x9::Czysc(){
	for (int wiersz =1; wiersz<10; wiersz++)
		for(int kol=1; kol<10; kol++)
			PoleWin[wiersz][kol].Pole.Set(0);
	AktualizujWin();
};//void TPlanszaSudoku9x9::Czysc()


//chcemy móc kopiowaæ ca³¹ planszê sudoku do innej:
//wartoœci, mo¿liwe wartoœci pó³ _i_ przypisane kontrolki / okna ekranowe
TPlanszaSudoku9x9 & TPlanszaSudoku9x9::operator = (const TPlanszaSudoku9x9 & kopiowana_plansza) {

	for (int wiersz =0; wiersz <10; wiersz++) //kopiujemy all 10 wierszy i kol - te¿ te nieu¿ywane
		for (int kol =0; kol<10; kol++) {
			this->PoleWin[wiersz][kol].Pole =kopiowana_plansza.PoleWin[wiersz][kol].Pole; // ju¿ umiemy kopiowaæ TPolaSudoku
			this->PoleWin[wiersz][kol].Okno =kopiowana_plansza.PoleWin[wiersz][kol].Okno;
		}; //for for wiersz/kol

	return *this;
};//TPlanszaSudoku9x9 & TPlanszaSudoku9x9::operator = (const TPlanszaSudoku9x9 &)


//w otoczeniu pola [wiersz][kol] usuwa wartoœæ n z mo¿liwych wartoœci
//otoczenie to ca³y wiersz, kolumna, sekcja 3x3
void TPlanszaSudoku9x9::ZablokujOtoczeniu (int wiersz, int kol, int n) {
	if ((wiersz <1) || (wiersz >9))
		return;
	if ((kol <1) || (kol >9))
		return;
	if ((n<1) || (n>9))
		return;

	//usuñ n z mo¿liwych w wierszu
	for (int i=1; i<10; i++) {
		PoleWin[wiersz][i].Pole.MozliweUsun(n);
	};
	//usuñ n z mo¿liwych w kolumnie
	for (int i=1; i<10; i++) {
		PoleWin[i][kol].Pole.MozliweUsun(n);
	};

	//usuñ n z mo¿liwych w sekcji 3x3
	for (int i=(3*(div(wiersz-1,3).quot)+1); i<(3*(div(wiersz-1,3).quot)+4); i++)
		for (int j=(3*(div(kol-1,3).quot)+1); j<(3*(div(kol-1,3).quot)+4); j++)
			PoleWin[i][j].Pole.MozliweUsun(n);

}; //void TPlanszaSudoku9x9::ZablokujOtoczeniu (int, int, int)


//TPlanszaSudoku9x9::UstawGdyMozliwe(int, int, int)
//ustawia wartoœæ pola[wiersz][kol] na n;
//blokuje "mo¿liwoœæ tej liczby" w wierszu, kolumnie, sekcji 3x3
//zwraca n gdy OK, 0 gdy b³¹d
int TPlanszaSudoku9x9::UstawGdyMozliwe(int wiersz, int kol, int n){

	//wstêpne sprawdzenia, czy parametry z zakresu 1..9
	if ((wiersz <1) || (wiersz >9))
		return 0;
	if ((kol <1) || (kol >9))
		return 0;
	if ((n<1) || (n>9))
		return 0;

	if (PoleWin[wiersz][kol].Pole.MozliweCzy(n)) {
		PoleWin[wiersz][kol].Pole.Set(n);
		ZablokujOtoczeniu(wiersz, kol, n);
	};

	return PoleWin[wiersz][kol].Pole.Get();
};//TPlanszaSudoku9x9::UstawGdyMozliwe(int, int, int)


//wpisuje wartoœæ i mo¿liwe wartoœci z pola sudoku do kontrolki na ekranie
//zwraca: gdy pole ma przypisan¹ kontrolkê =1; gdy nie ma =0;
int TPlanszaSudoku9x9::AktualizujWin(int wiersz, int kol){
	if (PoleWin[wiersz][kol].Okno == NULL)
		return 0;

	if (PoleWin[wiersz][kol].Pole.Get()){ //gdy pole ma ju¿ wartoœæ 1..9 to j¹ wyœwietlamy
		dynamic_cast<TStaticText *>(PoleWin[wiersz][kol].Okno)->Font->Size =30;
		dynamic_cast<TStaticText *>(PoleWin[wiersz][kol].Okno)->Caption = IntToStr((int)PoleWin[wiersz][kol].Pole.Get());
	}   //if gdy polesudoku ma wartosc 1..9 to j¹ wyœwietlamy
	else { //pole sudoku nie ma jeszcze wartoœci 1..9 => wyœwietlamy mo¿liwe wartoœci
		String s ="";
		for (int i=1;i<10;i++){
			s+=(PoleWin[wiersz][kol].Pole.MozliweCzy(i) ? (String)(IntToStr((int)i)) : (String)".");
			if(i<9){
				if(div(i,3).rem==0)
					s+="\n";
				else
					s+=" ";
			};//if(i<9)
		}; //for

#ifdef DEBUG_KTP
	ShowMessage(s);
#endif

		dynamic_cast<TStaticText *>(PoleWin[wiersz][kol].Okno)->Font->Size =8;
		dynamic_cast<TStaticText *>(PoleWin[wiersz][kol].Okno)->Font->Pitch =1; //fpFixed
		dynamic_cast<TStaticText *>(PoleWin[wiersz][kol].Okno)->Caption = s;
	}; //if else
	return 1;
};//TPlanszaSudoku9x9::AktualizujWin(int , int )


//wpisuje wartoœæ i mo¿liwe wartoœci z all pól sudoku do kontrolek na ekranie
//zwraca: gdy all pola maj¹ przypisane kontrolki =1; gdy nie ma =0;
int TPlanszaSudoku9x9::AktualizujWin(){
	int kod_powrotu =1;
	for (int wiersz =1; wiersz <10; wiersz++)
		for (int kol=1; kol<10; kol++){
			kod_powrotu *=AktualizujWin(wiersz,kol);//jak all zwróc¹ 1, to dalej bêdzie 1;
													//jak chocia¿ jedno zwróci 0, to nam wyzeruje
		};//for
	return kod_powrotu;
};//TPlanszaSudoku9x9::AktualizujWin()


// 3szt funkcje sprawdzaj¹ce, czy w danym wierszu / kolumnie / sekcji 3x3
//wystêpuje jakaœ samotna "mo¿liwa liczba" n
//
//wejœcie: wiersz /kolumna / sekcja 3x3; testowana "na samotnoœæ"
//"mo¿liwa liczba" n
//numeracja wierszy /kolumn: 1..9; analogicznie pól w wierszu / kolumnie
//numeracja sekcji 3x3: górny wiersz 1..3, œrodkowy: 4..6, dolny: 7..9
//numeracja pól w ramach sekcji analogicznie
//
//wyjœcie: numer pola 1..9 w ramach wiersza/kolumny/sekcji3x3,
//w którym jest samotna badana 'mo¿liwa liczba' n,
//lub 0 gdy w danym wierszu badana "mo¿liwa liczba" nie jest samotna

int TPlanszaSudoku9x9::CzySamotneWWierszu(int wiersz, int n){
	if ((wiersz <1) || (wiersz >9))
		return 0;
	if ((n<1) || (n>9))
		return 0;

	//tu mamy wejœcie z sensownego zakresu
	int ile_mozliwych=0;//ile jest 'mo¿liwych' n w danym wierszu
	int poz=0; //nr ostatniej kolumny, w której by³o 'mo¿liwe' n

	for (int i=1; i<10; i++){
		if (PoleWin[wiersz][i].Pole.MozliweCzy(n)){
			ile_mozliwych++;
			poz=i;
		};//if
	};//for

	if (ile_mozliwych==1)
		return poz;
	else
		return 0;
};//int TPlanszaSudoku9x9::CzySamotneWWierszu(int wiersz, int n)


int TPlanszaSudoku9x9::CzySamotneWKolumnie(int kol, int n){
	if ((kol <1) || (kol >9))
		return 0;
	if ((n<1) || (n>9))
		return 0;

	//tu mamy wejœcie z sensownego zakresu
	int ile_mozliwych=0;//ile jest 'mo¿liwych' n w danej kol
	int poz=0; //nr ostatniego wiersza, w którym by³o 'mo¿liwe' n

	for (int i=1; i<10; i++){
		if (PoleWin[i][kol].Pole.MozliweCzy(n)){
			ile_mozliwych++;
			poz=i;
		};//if
	};//for

	if (ile_mozliwych==1)
		return poz;
	else
		return 0;

};//int TPlanszaSudoku9x9::CzySamotneWKolumnie(int kolumna, int n)

int TPlanszaSudoku9x9::CzySamotneWSekcji3x3(int sekcja, int n){
	if ((sekcja <1) || (sekcja >9))
		return 0;
	if ((n<1) || (n>9))
		return 0;

	//tu mamy wejœcie z sensownego zakresu
	int ile_mozliwych=0;//ile jest 'mo¿liwych' n w danej kol
	int poz=0; //nr ostatniego wiersza, w którym by³o 'mo¿liwe' n

//mapowanie numeru sekcji i numeru pola w sekcji na [wiersz][kol]
//sekcja pole -> [wiersz][kol]   sekcja pole -> [wiersz][kol]   sekcja pole -> [wiersz][kol]
//  1     1         [1][1]         2     1         [1][4]          3     1         [1][7]
//  1     2         [1][2]         2     2         [1][5]          3     2         [1][8]
//  1     3         [1][3]         2     3         [1][6]          3     3         [1][9]
//  1     4         [2][1]         2     4         [2][4]          3     4         [2][7]
//  1     5         [2][2]         2     5         [2][5]          3     5         [2][8]
//  1     6         [2][3]         2     6         [2][6]          3     6         [2][9]
//  1     7         [3][1]         2     7         [3][4]          3     7         [3][7]
//  1     8         [3][2]         2     8         [3][5]          3     8         [3][8]
//  1     9         [3][3]         2     9         [3][6]          3     9         [3][9]
//
//  4     1         [4][1]         5     1         [4][4]          6     1         [4][7]
//  4     2         [4][2]         5     2         [4][5]          6     2         [4][8]
//  4     3         [4][3]         5     3         [4][6]          6     3         [4][9]
//  4     4         [5][1]         5     4         [5][4]          6     4         [5][7]
//  4     5         [5][2]         5     5         [5][5]          6     5         [5][8]
//  4     6         [5][3]         5     6         [5][6]          6     6         [5][9]
//  4     7         [6][1]         5     7         [6][4]          6     7         [6][7]
//  4     8         [6][2]         5     8         [6][5]          6     8         [6][8]
//  4     9         [6][3]         5     9         [6][6]          6     9         [6][9]
//
//  7     1         [7][1]         8     1         [7][4]          9     1         [7][7]
//  7     2         [7][2]         8     2         [7][5]          9     2         [7][8]
//  7     3         [7][3]         8     3         [7][6]          9     3         [7][9]
//  7     4         [8][1]         8     4         [8][4]          9     4         [8][7]
//  7     5         [8][2]         8     5         [8][5]          9     5         [8][8]
//  7     6         [8][3]         8     6         [8][6]          9     6         [8][9]
//  7     7         [9][1]         8     7         [9][4]          9     7         [9][7]
//  7     8         [9][2]         8     8         [9][5]          9     8         [9][8]
//  7     9         [9][3]         8     9         [9][6]          9     9         [9][9]
//

// korzystamy z: div(.., ..).quot, div(.., ..).rem
//wiersz =3*div(sekcja-1,3).quot + div(nr_pola_w_sekcji-1,3).quot +1
//kol    =3*div(sekcja-1,3).rem  + div(nr_pola_w_sekcji-1,3).rem  +1

	for (int i=1; i<10; i++){ //tu i reprezentuje nr pola wsekcji 3x3
		if (PoleWin[3*div(sekcja-1,3).quot+div(i-1,3).quot+1][3*div(sekcja-1,3).rem+div(i-1,3).rem+1].Pole.MozliweCzy(n)){
			ile_mozliwych++;
			poz=i;
		};//if
	};//for

	if (ile_mozliwych==1)
		return poz;  //zwracamy nr pola w sekcji
	else
		return 0;


};//int TPlanszaSudoku9x9::CzySamotneWSekcji3x3(int sekcja, int n)

