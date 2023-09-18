#ROZDZIAŁ 7- SQL w mgnieniu oka - Ben Fort zadania


SELECT Concat(RTRIM(dost_nazwa), " (", RTRIM(dost_kraj) , ") ") 
FROM Dostawcy
ORDER BY dost_nazwa;

SELECT prod_id,
		ilosc,
        cena_elem,
        ilosc*cena_elem AS wartosc -- wartosc staje sie polem oblcizalnym 
FROM elementyzamowienia
WHERE zam_numer = 20008;

# zadanie1) pobierz z tabeli DOstawcy pola dost_id dost_nazwa dost_adres i dost_miasto
# nazwe pola dost_nazwa zmien na dnazwa, dost_miasto na dmiasto, a dost_adres na dadres. 
# posortuj wdg nazw dostawców

SELECT dost_id,
		dost_nazwa AS dnazwa,
        dost_miasto AS dmiasto,
        dost_adres AS dadres
FROM dostawcy
ORDER BY dnazwa;

#zadane 2) Sklep ma wyprzedaż i wszystko ma rabat 10%. Napisz instr. która zwraca
# prod_id, prod_cena i cena_wyprz z tabeli Produkty 

SELECT prod_id,
		prod_cena,
        prod_cena * 0.9 AS cena_wyprz
FROM Produkty;