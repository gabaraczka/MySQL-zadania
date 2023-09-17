#ROZDZIAŁ 5- SQL w mgnieniu oka - Ben Fort zadania
/* SELECT prod_nazwa
FROM Produkty
WHERE (dost_id = 'DLL01' OR dost_id = 'BRS01') 
				AND prod_cena >= 50; 			*/
                
# zadanie 1) - pobieraz z tabeli Dostawcy dost_nazwa, i zwraca tylko dostawców z wojewodztwa mazowieckiego
# (filtr wedlug państwa  i stanu MAZ)

SELECT dost_nazwa
FROM Dostawcy
WHERE dost_kraj = 'Polska' AND dost_woj = 'MAZ';

#zadanie 2)conajmniej 100 sztuk produktu BR01, BR02, BR03, zwróc zam_numer i prod_id 0 ilosc z tab ELementy Zamowienia
#   Przefiltrowac na podst indefikatora i liczby sztuk 

SELECT zam_numer, prod_id, ilosc
FROM ElementyZamowienia
WHERE (prod_id='BR01' OR prod_id='BR02' OR prod_id='BR02')
 AND ilosc >= 100;
;

# zadanie 3) -pobierz z Produkty prod_nazwa i prod_cena wszystkich produktów 
#o cenie pom 20 a 40. Użyj and i posortuj wdg ceny

SELECT prod_nazwa, prod_cena
FROM Produkty
WHERE prod_cena BETWEEN 20 AND 40
ORDER BY prod_cena; 

#zadanie 4) znajdz bład 

/*
SELECT dost_nazwa
FROM Dostawcy
ORDER BY dost_nazwa
WHERE dost_kraj = 'Polska' AND dost_woj = 'MAZ;
*/

# order by powinno byc po where