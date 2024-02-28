SELECT *,
        IIF(MONTH(METTOL) = 06 OR MONTH(METTOL) = 07 OR MONTH(METTOL) = 08, 'Nyári', 'Nem nyári') AS 'Nyári-e?'
FROM Foglalas 
WHERE UGYFEL_FK = 'laszlo2' and GYERMEK_SZAM = 0

SELECT szh.TIPUS, YEAR(f.METTOL) AS 'Év', MONTH(f.METTOL) AS 'Hónap', COUNT(*)
FROM Foglalas f JOIN Szoba sz ON f.SZOBA_FK = sz.SZOBA_ID 
                JOIN Szallashely szh ON szh.SZALLAS_ID = sz.SZALLAS_FK
WHERE DATEDIFF(day, METTOL, MEDDIG)>=5 
GROUP BY szh.TIPUS, YEAR(f.METTOL), MONTH(f.METTOL)

SELECT sz.*,
            IIF(sz.KLIMAS = 'i', 25000, 20000)AS 'Napi ár'
FROM Szoba sz LEFT JOIN Foglalas f ON sz.SZOBA_ID = f.SZOBA_FK
WHERE f.SZOBA_FK IS NULL