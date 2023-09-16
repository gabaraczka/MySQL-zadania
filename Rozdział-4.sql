#ROZDZIAŁ 4- SQL w mgnieniu oka - Ben Fort zadania

/* produkty ktorych dostawca nie jest producent DLL01, i cena pomiedzy 10 a 50

SELECT dost_id, prod_nazwa, prod_cena
FROM Produkty
WHERE dost_id <> 'DLL01' AND prod_cena BETWEEN 10 AND 50;*/

# zadanie 1) - pobierz prod_id oraz prod_nazwa z Produkty i zwroc tylko cene rowna 12,99
SELECT prod_id, prod_nazwa
FROM Produkty
WHERE prod_cena = 12.99; 

# zadanie 2) - pobierz prod_id oraz prod_nazwa z Produkty i zwroc tylko cene rowna lub wieksza 15
SELECT prod_id, prod_nazwa
FROM Produkty
WHERE prod_cena >= 15; 

# zadanie 3)- pobierz z tab ElementyZamowienia unikatowa liste numerów (zam_numer ) 
# obejmujących liste conajmniej 100 sztuk dowolnego produktu

SELECT DISTINCT zam_numer
FROM ElementyZamowienia
WHERE ilosc >= 100;

# zadanie 4) -pobiera z tabeli Produkty prod_nazwa i prod_cene (od 20 do 40)
# posortuj wedlug ceny

SELECT prod_nazwa, prod_cena
FROM Produkty
WHERE prod_cena BETWEEN 20 AND 40 
ORDER BY prod_cena;