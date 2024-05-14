3. Feladat

Csapat tagjai: Kovalik-Deák Bercel, Semsei Márton, Balla Attila

Az adatbázis egy kitalált Webshop Vevőit, Rendeléseit, Rendelések részleteit és Termékeit tartalmazza. 
Összesen 4 tábla, 20-20 sor és 5 oszlop mindegyikben.

A cluster network access beállításában az összes IP-cím engedélyezve van, így elvileg lefuttatható a kód. A kódot PyCharmban írtuk, futtatásához az alábbi package-k szükségesek:
-certifi (SSL/TLS verifikáció miatt)
-dnspython (mongodb+srv URI miatt, MongoDB client-et utasítja hogy SRV rekordokat keressen a DNS-ben.)
-pymongo (MongoDB adatbázis kezelő package)

Az adatbázis tábláit Python-on keresztül töltöttük fel adatokkal, erre létrehozott függvénnyel. 
Ezután ellenőriztük a kapcsolatot és lekérdeztünk egyszerű mintának példa adatokat, hogy biztosítsuk a sikeres importálást.

Az 1. lekérdezés az 5 legtöbbet költő vevőt listázza adott időszakon belül, költésük szerinti csökkenő sorrendben. Jelen esetben a teljes dokumentált időszakot tekintve.
A 2. lekérdezés a termékkategóriánkénti összbevételt és átlagárat listázza.
A 3. lekérdezés azt vizsgálja, hogy melyik termékekből alacsony a készlet. Az alacsony készlet számot előre megadtuk, jelent esetben 50.
A 4. lekérdezés a legnépszerűbb, azaz legtöbbet eladott termékeket vizsgálja, eladott mennyiség szerinti csökkenő sorrendben.
Az 5. lekérdezés a drága termékeket listázza, adott ár felett (előre megadott, 100) ár szerinti csökkenő sorrendben.

A CRUD műveleteknél a Create és a Delete művelet ugyanazt a rekordot adja hozzá, majd törli, tehát ha tesztelni szeretné, kommentelje ki az egyiket vagy a másikat. Egyszerűség kedvéért a Read műveletet utoljára tettük, hogy a műveletek utáni eredményt lássuk.
