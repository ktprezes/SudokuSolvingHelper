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
//przechowuje i ustawia / udost�pnia warto�� pola i "mo�liwe warto�ci"
//"warto��" =0 - nieokre�lona (pocz�tkowa/domy�lna), polegamy na "mo�liwe warto�ci"
//=1..9 - okre�lona kt�ra� z tych - "mo�liwe warto�ci" ju� nas nie interesuj�
//"mo�liwe warto�ci" - wynikaj�ce z relacji do innych p�l o okre�lonej warto�ci
//le��cych w tym samym wierszu / kolumnie / sekcji 3x3
//pocz�tkowo "mo�liwe warto�ci" to wszystkie z przedzia�u 1..9
//na wy�szym poziomie - w tablicy TPlanszaSudoku ma by� sprawdzenie, zapewnienie
//czy/�e ustawienie warto�ci w jednym polu, usuwa t� warto�� z innych p�l
//wiersza, kolumny, sekcji 3x3

class TPoleSudoku {
private:	// User declarations
	int wartosc;//0 - nieokre�lona, polegamy na "mo�liwe warto�ci"
				//1..9 - kt�ra� z tych - "mo�liwe warto�ci" ju� nas nie interesuj�
	int mozliwe_wartosci [10]; //b�dziemy u�ywa� p�1 [1..9], pole [0] nieu�ywane
				//mozliwe_wartosci[i] = 0 - niemo�liwa, =1 - mo�liwa

public:		// User declarations
	TPoleSudoku();  //konstruktor domy�lny - ustawia warto�� na 0,
					//a 'mo�liwe warto�ci' na wszystkie z 1..9
	TPoleSudoku(int n); //konstruktor okre�lony - ustawia warto�� na n,
						//a 'mo�liwe warto�ci na �adne z 1..9

	//chcemy m�c kopiowa� pole sudoku do innego - warto�� _i_ mo�liwe warto�ci
	TPoleSudoku & operator = (const TPoleSudoku &);

	int Set(int n);//ustawia warto�� pola
	int Get ();    //pobiera warto�� pola

	int MozliweCzy(int n); //=1 gdy warto�� n mo�liwa w danym polu, =0 gdy niemo�liwa
	int MozliweIle(); //zwraca ilo�� warto�ci mo��iwych w danym polu 0..9
	int MozliweDodaj(int n);// dodaje warto�� n do mo�liwych w danym polu
							// zwraca ilo�� warto�ci mo�liwych po dodaniu n
							// prawid�owe n=1..9;
							//inna warto�� - nie jest dodana
							// zwraca ilo�� mo�liwych warto�ci jaka by�a ju� wcze�niej

	int MozliweUsun (int n);// usuwa warto�� n z mo�liwych w danym polu
							// zwraca ilo�� warto�ci mo�liwych po usuni�ciu n
							// prawid�owe n=1..9;
							// inna warto�� - nie jest usuwana
							// zwraca ilo�� mo�liwych warto�ci jaka by�a ju� wcze�niej
}; //class TPoleSudoku

//---------------------------------------------------------------------------
//klasa TPlanszaSudoku9x9
class TPlanszaSudoku9x9:public TPoleSudoku {

private:
	struct TPoleWin {
		TPoleSudoku Pole;
		TControl *Okno; //przypisana do danego pola kontrolka pokazuj�ca jego stan
					    //w tym programie jest typu TStaticText
	};//struct TPoleWin

	TPoleWin PoleWin[10][10]; //plansza do gry w Sudoku u�ywane s� tylko pola
							//[1..9][1..9] - tak zdefiniowa�em, �eby �atwiej
							//by�o ogarnia� indeksy i numery p�l
							//np pole 21 <=> [2][1]
							//mo�liwe numery p�l 11..19, 21..29, ..., 91..99
public:
	TPlanszaSudoku9x9();

	//przypisz okno do pola sudoku, zwraca warto�� pola sudoku
	int PrzypiszWin(int wiersz, int kol, TControl *win);

	//zwraca wska�nik do przypisanego okienka danego pola
	TControl *GetWin(int wiersz, int kol);

	//czy�ci plansze - ustawia wszystkie pola na warto�� =0
	//to jednocze�nie ustawia "mo�liwe warto�ci" na wszystkie z 1..9
	//(patrz TPoleSudoku.Set(0)
	void Czysc();


	//chcemy m�c kopiowa� ca�� plansz� sudoku do innej:
	//warto�ci, mo�liwe warto�ci p� _i_ przypisane kontrolki / okna ekranowe
	TPlanszaSudoku9x9 & operator = (const TPlanszaSudoku9x9 &);


	//w otoczeniu pola [wiersz][kol] usuwa warto�� n z mo��iwych warto�ci
	//otoczenie to ca�y wiersz, kolumna, sekcja 3x3
	void ZablokujOtoczeniu (int wiersz, int kol, int n);

	//ustawia warto�� pola[wiersz][kol] na n, zwraca n gdy OK, 0 gdy b��d
	int UstawGdyMozliwe(int wiersz, int kol, int n);

	//wpisuje warto�� i mo�liwe warto�ci z pola sudoku do kontrolki na ekranie
	int AktualizujWin(int wiersz, int kol);

	//wpisuje warto�� i mo�liwe warto�ci z all p�l sudoku do kontrolek na ekranie
	//je�li all pola mia�y przypisane kontrolki zwraca 1,
	//je�li chocia� jedno nie mia�o - zwraca 0
	int AktualizujWin();

	//funkcje sprawdzaj�ce, czy w danym wierszu / kolumnie / sekcji 3x3
	//wyst�puje jaka� samotna "mo�liwa liczba" n
	//
	//wej�cie: wiersz /kolumna / sekcja 3x3; testowana "na samotno��"
	//"mo�liwa liczba" n
	//numeracja wierszy /kolumn: 1..9; analogicznie p�l w wierszu / kolumnie
	//numeracja sekcji 3x3: g�rny wiersz 1..3, �rodkowy: 4..6, dolny: 7..9
	//numeracja p�l w ramach sekcji analogicznie
	//
	//wyj�cie: numer pola 1..9 w ramach wiersza/kolumny/sekcji3x3,
	//w kt�rym jest samotna badana 'mo�liwa liczba' n,
	//lub 0 gdy w danym wierszu badana "mo�liwa liczba" nie jest samotna
	int CzySamotneWWierszu(int wiersz, int n);
	int CzySamotneWKolumnie(int kol, int n);
	int CzySamotneWSekcji3x3(int sekcja, int n);

}; //class TPlanszaSudoku9x9

//---------------------------------------------------------------------------
#endif // SdkuSlvrDtaLogicH

