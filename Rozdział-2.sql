#ROZDZIAŁ 2 - SQL w mgnieniu oka - Ben Fort zadania

# zadanie 1) Podbranie identyfikatorów Klientów
SELECT kl_id
FROM klienci;

#zadanie 2) Pobierz liste zamóionych produktów (ma zwracać tylko uniaktowe produkty)
SELECT DISTINCT prod_id
FROM ElementyZamowienia;

#zadanie 3) Pobierz wszytskie kolumny z tabeli Klienci i napisz inna instr. SELECT tylko zidentyfikowanych klientów
SELECT *
# SELECT kl_id
FROM Klienci;
