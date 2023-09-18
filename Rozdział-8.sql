#ROZDZIAŁ 8- SQL w mgnieniu oka - Ben Fort zadania

SELECT zam_numer, zam_data
FROM Zamowienia
WHERE YEAR(zam_data )=2012;

/*zadanie 1) Login jest kombinacja nazwy i masta klienta. Napisz instr zwracjaca kl_id kl_nazwa
i login (uzyt_login) (ma sie skladac z wielkich liter i zawierac dwa pierwsze znaki danych kontaktowych 
klienta kl_kontaty i trzy pierwsze znaki kl_miasto )
*/

SELECT kl_id, kl_nazwa,
		CONCAT(UPPER(LEFT(kl_kontakt, 2)),
        UPPER(LEFT(kl_miasto, 3)))
        AS uzyt_login
FROM Klienci;

/*Zadanie 2) napisz instrukcje która zwraca zam_numer i zam _data wszystkich zam 
złożonych w styczniu 2012.  Dane psort wdg daty */

SELECT zam_numer, zam_data
FROM Zamowienia
WHERE YEAR(zam_data)=2012 AND MONTH(zam_data) = 1
ORDER BY zam_data;
