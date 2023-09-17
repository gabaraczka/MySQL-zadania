#ROZDZIAŁ 6- SQL w mgnieniu oka - Ben Fort zadania

#zadanie 1)pobierz prod_nazwa i prod_opis z tab Produkty i zwróc tylko te w któych opisie 
# występuje słowo szmacianka

SELECT prod_nazwa, prod_opis
FROM Produkty 
WHERE prod_opis LIKE '%szmacianka%';

#zadnaie 2)pobierz prod_nazwa i prod_opis z tab Produkty i zwróc tylko te w któych opisie 
# NIE występuje słowo szmacianka. posortuj według nazw

SELECT prod_nazwa, prod_opis
FROM Produkty 
WHERE NOT prod_opis LIKE '%szmacianka%'
ORDER BY prod_nazwa;

#zadanie 3)pobierz prod_nazwa i prod_opis z tab Produkty i zwróc tylko te w któych opisie 
# występuje słowo szmacianka i rybka  (zast AND i dwa LIKE)

SELECT prod_nazwa, prod_opis
FROM Produkty 
WHERE prod_opis LIKE '%szmacianka%' AND prod_opis LIKE '%Rybka%';

#zadanie 4)pobierz prod_nazwa i prod_opis z tab Produkty i zwróc tylko te w któych opisie 
# występuje słowo szmacianka i rybka  w odwrotnej kolejnosci (rybka pierwsza, jeden like trzy %)
SELECT prod_nazwa, prod_opis
FROM Produkty 
WHERE prod_opis LIKE '%Rybka%szmacianka%';