#ROZDZIAŁ 10 - SQL w mgnieniu oka - Ben Fort zadania

-- wyswietlenie listy dostawcow z wiecej niz 1 produktem o cenie pow 10 pln

SELECT dost_id, COUNT(*) AS liczba_prod
FROM Produkty
WHERE prod_cena >= 10
GROUP BY dost_id
HAVING COUNT(*) >=2;

# zadanie 1)napisz instrukcje zwracjąca liczbe pozycji jako zam_pozycje dla kazdego
# numeru zamówienia(zam_numer) posrtuj wdg zam_pozycje

SELECT zam_numer, COUNT(*) AS zam_pozycje
FROM elementyzamowienia
GROUP BY zam_numer;

#zadanie 2) napisz instrukcje kt zwraca pole najatszy_prod, zawierajcy najtanszy prod dla
#kazdego producenat. posortuj wdg ceny

SELECT dost_id, MIN(prod_cena) AS najtanszy_prod
FROM Produkty
GROUP BY dost_id
ORDER BY najtanszy_prod;

#zadanie 3) napisz instrukcje ktora ktora zwraca numery(zam_numer)
# wszystkich elemntów obejmujacych 100 elementów

SELECT zam_numer
FROM ElementyZamowienia
GROUP BY zam_numer
HAVING SUM(ilosc)>=100 
ORDER BY zam_numer;
#zadanie 4) napisz instrukcje ktora ktora zwraca numery(zam_numer)
# wszystkich elemntów ktorych łączna cena byla pryznamniej  1000 posotuj wdg numerow zam


SELECT zam_numer,  SUM(cena_elem*ilosc) AS cena_razem
FROM ElementyZamowienia
GROUP BY zam_numer
HAVING SUM(cena_elem*ilosc) >=1000 
ORDER BY zam_numer;

#zadanie 5_ znajdz błąd

/*
SELECT zam_numer, COUNT(*) AS elementy
FROM ElementyZamowienia
GROUP BY elementy
HAVING COUNT(*) >= 3
ORDER BY elementy, zam_numer;

nie wolno uzywac kolumn w agregacji tzn alaisowanych
*/