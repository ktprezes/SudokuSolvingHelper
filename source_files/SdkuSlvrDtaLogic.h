//---------------------------------------------------------------------------

#ifndef SdkuSlvrDtaLogicH
#define SdkuSlvrDtaLogicH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>

//---------------------------------------------------------------------------
//klasa TPoleSudoku
//przechowuje i ustawia / udostêpnia wartoœæ pola i "mo¿liwe wartoœci"
//"wartoœæ" =0 - nieokreœlona (pocz¹tkowa/domyœlna), polegamy na "mo¿liwe wartoœci"
//=1..9 - okreœlona któraœ z tych - "mo¿liwe wartoœci" ju¿ nas nie interesuj¹
//"mo¿liwe wartoœci" - wynikaj¹ce z relacji do innych pól o okreœlonej wartoœci
//le¿¹cych w tym samym wierszu / kolumnie / sekcji 3x3
//pocz¹tkowo "mo¿liwe wartoœci" to wszystkie z przedzia³u 1..9
//na wy¿szym poziomie - w tablicy TPlanszaSudoku ma byæ sprawdzenie, zapewnienie
//czy/¿e ustawienie wartoœci w jednym polu, usuwa tê wartoœæ z innych pól
//wiersza, kolumny, sekcji 3x3

class TPoleSudoku {
private:	// User declarations
	int wartosc;//0 - nieokreœlona, polegamy na "mo¿liwe wartoœci"
				//1..9 - któraœ z tych - "mo¿liwe wartoœci" ju¿ nas nie interesuj¹
	int mozliwe_wartosci [10]; //bêdziemy u¿ywaæ pó1 [1..9], pole [0] nieu¿ywane
				//mozliwe_wartosci[i] = 0 - niemo¿liwa, =1 - mo¿liwa

public:		// User declarations
	TPoleSudoku();  //konstruktor domyœlny - ustawia wartoœæ na 0,
					//a 'mo¿liwe wartoœci' na wszystkie z 1..9
	TPoleSudoku(int n); //konstruktor okreœlony - ustawia wartoœæ na n,
						//a 'mo¿liwe wartoœci na ¿adne z 1..9

	//chcemy móc kopiowaæ pole sudoku do innego - wartoœæ _i_ mo¿liwe wartoœci
	TPoleSudoku & operator = (const TPoleSudoku &);

	int Set(int n);//ustawia wartoœæ pola
	int Get ();    //pobiera wartoœæ pola

	int MozliweCzy(int n); //=1 gdy wartoœæ n mo¿liwa w danym polu, =0 gdy niemo¿liwa
	int MozliweIle(); //zwraca iloœæ wartoœci mo¿³iwych w danym polu 0..9
	int MozliweDodaj(int n);// dodaje wartoœæ n do mo¿liwych w danym polu
							// zwraca iloœæ wartoœci mo¿liwych po dodaniu n
							// prawid³owe n=1..9;
							//inna wartoœæ - nie jest dodana
							// zwraca iloœæ mo¿liwych wartoœci jaka by³a ju¿ wczeœniej

	int MozliweUsun (int n);// usuwa wartoœæ n z mo¿liwych w danym polu
							// zwraca iloœæ wartoœci mo¿liwych po usuniêciu n
							// prawid³owe n=1..9;
							// inna wartoœæ - nie jest usuwana
							// zwraca iloœæ mo¿liwych wartoœci jaka by³a ju¿ wczeœniej
}; //class TPoleSudoku

//---------------------------------------------------------------------------
//klasa TPlanszaSudoku9x9
class TPlanszaSudoku9x9:public TPoleSudoku {

private:
	struct TPoleWin {
		TPoleSudoku Pole;
		TControl *Okno; //przypisana do danego pola kontrolka pokazuj¹ca jego stan
					    //w tym programie jest typu TStaticText
	};//struct TPoleWin

	TPoleWin PoleWin[10][10]; //plansza do gry w Sudoku u¿ywane s¹ tylko pola
							//[1..9][1..9] - tak zdefiniowa³em, ¿eby ³atwiej
							//by³o ogarniaæ indeksy i numery pól
							//np pole 21 <=> [2][1]
							//mo¿liwe numery pól 11..19, 21..29, ..., 91..99
public:
	TPlanszaSudoku9x9();

	//przypisz okno do pola sudoku, zwraca wartoœæ pola sudoku
	int PrzypiszWin(int wiersz, int kol, TControl *win);

	//zwraca wskaŸnik do przypisanego okienka danego pola
	TControl *GetWin(int wiersz, int kol);

	//czyœci plansze - ustawia wszystkie pola na wartoœæ =0
	//to jednoczeœnie ustawia "mo¿liwe wartoœci" na wszystkie z 1..9
	//(patrz TPoleSudoku.Set(0)
	void Czysc();


	//chcemy móc kopiowaæ ca³¹ planszê sudoku do innej:
	//wartoœci, mo¿liwe wartoœci pó³ _i_ przypisane kontrolki / okna ekranowe
	TPlanszaSudoku9x9 & operator = (const TPlanszaSudoku9x9 &);


	//w otoczeniu pola [wiersz][kol] usuwa wartoœæ n z mo¿³iwych wartoœci
	//otoczenie to ca³y wiersz, kolumna, sekcja 3x3
	void ZablokujOtoczeniu (int wiersz, int kol, int n);

	//ustawia wartoœæ pola[wiersz][kol] na n, zwraca n gdy OK, 0 gdy b³¹d
	int UstawGdyMozliwe(int wiersz, int kol, int n);

	//wpisuje wartoœæ i mo¿liwe wartoœci z pola sudoku do kontrolki na ekranie
	int AktualizujWin(int wiersz, int kol);

	//wpisuje wartoœæ i mo¿liwe wartoœci z all pól sudoku do kontrolek na ekranie
	//jeœli all pola mia³y przypisane kontrolki zwraca 1,
	//jeœli chocia¿ jedno nie mia³o - zwraca 0
	int AktualizujWin();

	//funkcje sprawdzaj¹ce, czy w danym wierszu / kolumnie / sekcji 3x3
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
	int CzySamotneWWierszu(int wiersz, int n);
	int CzySamotneWKolumnie(int kol, int n);
	int CzySamotneWSekcji3x3(int sekcja, int n);

}; //class TPlanszaSudoku9x9

//---------------------------------------------------------------------------
#endif // SdkuSlvrDtaLogicH

