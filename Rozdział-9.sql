#ROZDZIAŁ 9 - SQL w mgnieniu oka - Ben Fort zadania

-- srednia cena produktow oferowanych przez wybranego dostawce

SELECT AVG(prod_cena) AS sr_cena
FROM Produkty
WHERE dost_id = 'DLL01';

#zadanie 1) instrukcja ustala łączna lczbe sprzedancyh produktów (użyj kolumny ilosc
# z tab Elementy Zamóweinia)

SELECT SUM(ilosc) AS ilosc_sprzedarzy
FROM ElementyZamowienia;

#zadanie 2) zmodifikuj zad1) aby ustalić łączną ilośc sprzedaży dla prod_id BR01

SELECT SUM(ilosc) AS ilosc_sprzedarzyBR01
FROM ElementyZamowienia
WHERE prod_id = 'BR01';

#zadanie 3) napisz instrukcje aby utsalić prod_cena najdr produktu z tab Produkty, który 
#kosztuje nie wiecej nic 10zl (pole nazwij cena_maks)

SELECT MAX(prod_cena) AS cena_maks
FROM Produkty 
WHERE prod_cena <= 10; 