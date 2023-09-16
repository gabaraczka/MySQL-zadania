#ROZDZIAŁ 3- SQL w mgnieniu oka - Ben Fort zadania

# zadanie 1)- pobierz nazwy wszystkich klientów z tabeli Klienci i wyświetla je posort. od Z do A
SELECT kl_nazwa
FROM Klienci
ORDER BY kl_nazwa DESC;

#zadanie 2) Pobierz ID klienta (kl_id) i (zam numer) z tab. Zamówienia oraz sortuje
#według id a pózniej daty zamowienia w odwrotnej kolejnosci (od najnowych)

SELECT kl_id, zam_numer
FROM Zamowienia
ORDER BY kl_id, zam_data DESC;

/*zadanie 3) Wyswietl liczbe sztuk i cene jedn (prod_cena) z tab elemntyzamowienia. 
posortuj od najw liczby sztuk i najwyzszych cen*/

SELECT ilosc, zam_numer
FROM ElementyZamowienia
ORDER BY ilosc DESC, cena_elem DESC;

#zadanie 4) jaki tu jest błąd?
/*SELECT dost_nazwa
FROM dostawcy
ORDER dost_nazwa, DESC*/ 

# brakuje BY przy ORDER, nie moze byc , po dost_nazwa
