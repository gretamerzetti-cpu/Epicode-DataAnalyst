Create database ToysGroup;      /* Come prima cosa creo il database 
						        per la ToysGroup Spa */
Use ToysGroup;

/* procedo qui alla creazione delle tabelle attraverso
istruzioni DDL per le diverse entità protagoniste del DB*/ 

Create table Category (                                 
CategoryID INT AUTO_INCREMENT PRIMARY KEY,
CategoryName varchar(50)
); 

CREATE TABLE Product (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    CategoryID INT,
    Foreign key Product(CategoryID) REFERENCES Category(CategoryID)
);

CREATE TABLE Region (
RegionID INT AUTO_INCREMENT PRIMARY KEY,
RegionName VARCHAR(50) NOT NULL
);


CREATE TABLE Country (
CountryID INT AUTO_INCREMENT PRIMARY KEY,
CountryName VARCHAR(50) NOT NULL,
RegionID int,
Foreign key Country(RegionID) REFERENCES Region(RegionID)
);


CREATE TABLE City (
CityID INT AUTO_INCREMENT PRIMARY KEY,
CityName VARCHAR(50) NOT NULL,
CountryID INT, 
Foreign key City(CountryID) REFERENCES Country(CountryID)
);

CREATE TABLE Store (
StoreID INT AUTO_INCREMENT PRIMARY KEY,
StoreName VARCHAR(50) NOT NULL,
CityID INT, 
Foreign key Store(CityID) REFERENCES City(CityID)
); 

CREATE TABLE PriceList (
PriceListID INT AUTO_INCREMENT PRIMARY KEY,
ProductID INT,
RegionID INT, 
Currency VARCHAR(10),
price decimal(10,2),
Foreign key (RegionID) REFERENCES Region(RegionID),
FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
); 

create table Sales (
SalesID INT AUTO_INCREMENT PRIMARY KEY,
datesale date, 
unitprice decimal(10,2),
quantity int, 
ProductID int, 
StoreID int,
PriceListID int, 
Foreign key (ProductID) REFERENCES Product(ProductID),
Foreign key (StoreID) REFERENCES Store(StoreID),
Foreign key (PriceListID) REFERENCES PriceList(PriceListID)
); 

                                         /* procedo qui all'inserimento dei valori del dataset nelle tabelle attraverso
                                            istruzioni DML per le diverse tabelle sopra create */ 


INSERT INTO Region (RegionID, RegionName) VALUES 
(1, 'Europa Occidentale'),
(2, 'Europa Orientale'),
(3, 'Nord America'),
(4, 'Sud America'),
(5, 'Asia Orientale'),
(6, 'Asia Meridionale'),
(7, 'Medio Oriente'),
(8, 'Africa Subsahariana'),
(9, 'Nord Africa'),
(10, 'Oceania');


INSERT INTO Country (CountryID, RegionID, CountryName) VALUES 
(1, 1, 'Italia'), 
(2, 1, 'Francia'),
(3, 2, 'Polonia'),
 (4, 2, 'Romania'),
(5, 3, 'USA'), 
(6, 3, 'Canada'),
(7, 4, 'Brasile'), 
(8, 4, 'Argentina'),
(9, 5, 'Giappone'), 
(10, 5, 'Corea del Sud'),
(11, 6, 'India'),
(12, 6, 'Pakistan'),
(13, 7, 'Emirati Arabi Uniti'), 
(14, 7, 'Arabia Saudita'),
(15, 8, 'Nigeria'), 
(16, 8, 'Sudafrica'),
(17, 9, 'Egitto'), 
(18, 9, 'Marocco'),
(19, 10, 'Australia'), 
(20, 10, 'Nuova Zelanda');

INSERT INTO City (CityID, CountryID, CityName) VALUES 
(1, 1, 'Roma'), 
(2, 1, 'Milano'),
(3, 2, 'Parigi'), 
(4, 2, 'Lione'),
(5, 3, 'Varsavia'),
(6, 3, 'Cracovia'),
(7, 4, 'Bucarest'),
(8, 4, 'Cluj-Napoca'),
(9, 5, 'New York'), 
(10, 5, 'Los Angeles'),
(11, 6, 'Toronto'), 
(12, 6, 'Vancouver'),
(13, 7, 'San Paolo'), 
(14, 7, 'Rio de Janeiro'),
(15, 8, 'Buenos Aires'), 
(16, 8, 'Cordoba'),
(17, 9, 'Tokyo'), 
(18, 9, 'Osaka'),
(19, 10, 'Seul'), 
(20, 10, 'Busan'),
(21, 11, 'Mumbai'),
(22, 11, 'Nuova Delhi'),
(23, 12, 'Karachi'), 
(24, 12, 'Lahore'),
(25, 13, 'Dubai'),
(26, 13, 'Abu Dhabi'),
(27, 14, 'Riad'),
(28, 14, 'Gedda'),
(29, 15, 'Lagos'),
(30, 15, 'Abuja'),
(31, 16, 'Johannesburg'),
(32, 16, 'Città del Capo'),
(33, 17, 'Il Cairo'),
(34, 17, 'Alessandria'),
(35, 18, 'Casablanca'), 
(36, 18, 'Marrakech'),
(37, 19, 'Sydney'), 
(38, 19, 'Melbourne'),
(39, 20, 'Auckland'), 
(40, 20, 'Wellington');

INSERT INTO Store (StoreID, CityID, StoreName) VALUES 
(1, 1, 'Roma Main Store'), 
(2, 2, 'Milano Main Store'),
(3, 3, 'Paris Main Store'), 
(4, 4, 'Lyon Main Store'),
(5, 5, 'Warsaw Main Store'),
 (6, 6, 'Krakow Main Store'),
(7, 7, 'Bucharest Main Store'), 
(8, 8, 'Cluj Main Store'),
(9, 9, 'NY 5th Ave Store'), 
(10, 10, 'LA Sunset Store'),
(11, 11, 'Toronto Main Store'),
 (12, 12, 'Vancouver Main Store'),
(13, 13, 'Sao Paulo Store'),
 (14, 14, 'Rio Store'),
(15, 15, 'BA Main Store'), 
(16, 16, 'Cordoba Store'),
(17, 17, 'Tokyo Shibuya Store'), 
(18, 18, 'Osaka Main Store'),
(19, 19, 'Seoul Gangnam Store'), 
(20, 20, 'Busan Store'),
(21, 21, 'Mumbai Store'),
 (22, 22, 'Delhi Store'),
(23, 23, 'Dubai Mall Store'), 
(24, 24, 'Lahore Store'),
(25, 25, 'Dubai Marina Store'), 
(26, 26, 'Abu Dhabi Store'),
(27, 27, 'Riyadh Store'), 
(28, 28, 'Jeddah Store'),
(29, 29, 'Lagos Store'), 
(30, 30, 'Abuja Store'),
(31, 31, 'JoBurg Store'), 
(32, 32, 'Cape Town Store'),
(33, 33, 'Cairo Store'),
 (34, 34, 'Alexandria Store'),
(35, 35, 'Casablanca Store'), 
(36, 36, 'Marrakech Store'),
(37, 37, 'Sydney Store'), 
(38, 38, 'Melbourne Store'),
(39, 39, 'Auckland Store'), 
(40, 40, 'Wellington Store');


INSERT INTO Category (CategoryID, CategoryName) VALUES 
(1, 'Console e Hardware'),
(2, 'Videogiochi AAA'),
(3, 'Giochi da Tavolo'),
(4, 'Puzzle e Rompicapo'),
(5, 'Accessori Gaming');

INSERT INTO Product (ProductID, CategoryID, ProductName) VALUES 
(1, 1, 'GameStation 5 Pro'),
(2, 1, 'Switch Portatile XL'),
(3, 1, 'Visore VR Ultra'),
(4, 2, 'Epic Quest: The Kingdom'),
(5, 2, 'Cyber Racing 2077'),
(6, 2, 'Space Explorers 3'),
(7, 3, 'Strategia Galattica'),
(8, 3, 'Il Mistero del Castello'),
(9, 3, 'Corsa di Draghi'),
(10, 4, 'Puzzle 5000: Mappa Mondo'),
(11, 4, 'Cubo di Rubik Magnetico'),
(12, 4, 'Escape Room: Il Tempio'),
(13, 5, 'Controller Wireless Pro'),
(14, 5, 'Cuffie Surround 7.1'),
(15, 5, 'Tastiera Meccanica RGB');

INSERT INTO PriceList (PriceListID, ProductID, RegionID, price, Currency) VALUES 
(1, 1, 1, 549.99, 'EUR'),  
(2, 1, 2, 529.99, 'EUR'),  
(3, 1, 3, 499.99, 'USD'),  
(4, 1, 4, 650.00, 'USD'), 
(5, 1, 5, 55000.00, 'JPY'),
(6, 1, 6, 45000.00, 'INR'),
(7, 1, 7, 1900.00, 'AED'), 
(8, 1, 8, 600.00, 'USD'), 
(9, 1, 9, 18000.00, 'EGP'),
(10, 1, 10, 799.00, 'AUD'),
(31, 4, 1, 69.99, 'EUR'), 
(32, 4, 2, 59.99, 'EUR'),
(33, 4, 3, 59.99, 'USD'), 
(34, 4, 4, 59.99, 'USD'),
(35, 4, 5, 7500.00, 'JPY'),
(36, 4, 6, 3999.00, 'INR'),
(37, 4, 7, 250.00, 'AED'), 
(38, 4, 8, 59.99, 'USD'),
(39, 4, 9, 2500.00, 'EGP'),
(40, 4, 10, 99.00, 'AUD'),
(61, 7, 1, 45.00, 'EUR'),  
(62, 7, 2, 40.00, 'EUR'),
(63, 7, 3, 39.99, 'USD'), 
(64, 7, 4, 55.00, 'USD'),
(65, 7, 5, 5000.00, 'JPY'),
(66, 7, 6, 2500.00, 'INR'),
(67, 7, 7, 160.00, 'AED'),
(68, 7, 8, 50.00, 'USD'),
(69, 7, 9, 1500.00, 'EGP'),
(70, 7, 10, 65.00, 'AUD');

-- Popolamento massivo della tabella Sales (50 transazioni)
INSERT INTO Sales (SalesID, ProductID, StoreID, PriceListID, DateSale, UnitPrice, Quantity) VALUES 
(1, 1, 1, 1, '2026-01-10', 549.99, 1),  
 (2, 4, 2, 31, '2026-01-12', 69.99, 3),
(3, 7, 3, 61, '2026-01-15', 45.00, 2),  
 (4, 1, 4, 1, '2026-01-20', 549.99, 1),
(5, 13, 5, 2, '2026-01-22', 59.99, 2), 
  (6, 10, 6, 2, '2026-01-25', 120.00, 1),
(7, 2, 7, 2, '2026-01-28', 1450.00, 1), 
 (8, 5, 8, 32, '2026-02-01', 59.99, 5),
(9, 1, 9, 3, '2026-02-02', 499.99, 10), 
 (10, 4, 10, 33, '2026-02-03', 59.99, 15),
(11, 7, 11, 63, '2026-02-05', 39.99, 4),
 (12, 13, 12, 3, '2026-02-07', 49.99, 6),
(13, 15, 9, 3, '2026-02-10', 129.99, 3), 
(14, 2, 10, 3, '2026-02-12', 1200.00, 2),
(15, 1, 13, 4, '2026-02-14', 650.00, 2), 
(16, 4, 14, 34, '2026-02-15', 59.99, 4),
(17, 7, 15, 64, '2026-02-16', 55.00, 3),
 (18, 14, 16, 4, '2026-02-17', 85.00, 1),
(19, 1, 17, 5, '2026-02-18', 55000.00, 5), 
(20, 4, 18, 35, '2026-02-19', 7500.00, 12),
(21, 7, 19, 65, '2026-02-20', 5000.00, 8),
 (22, 13, 20, 5, '2026-02-21', 6000.00, 10),
(23, 1, 21, 6, '2026-02-22', 45000.00, 2),
 (24, 4, 22, 36, '2026-02-23', 3999.00, 20),
(25, 1, 25, 7, '2026-02-24', 1900.00, 3),
 (26, 15, 26, 7, '2026-02-25', 450.00, 5),
(27, 4, 27, 37, '2026-02-26', 250.00, 10), 
(28, 7, 28, 67, '2026-02-27', 160.00, 4),
(29, 1, 29, 8, '2026-02-28', 600.00, 1), 
 (30, 4, 30, 38, '2026-03-01', 59.99, 3),
(31, 7, 31, 68, '2026-03-01', 50.00, 2), 
 (32, 13, 32, 8, '2026-03-01', 65.00, 4),
(33, 1, 33, 9, '2026-03-01', 18000.00, 1), 
(34, 15, 34, 9, '2026-03-01', 3500.00, 2),
(35, 1, 37, 10, '2026-03-01', 799.00, 4),
 (36, 4, 38, 40, '2026-03-01', 99.00, 8),
(37, 7, 39, 70, '2026-03-01', 65.00, 5),  
(38, 13, 40, 10, '2026-03-01', 89.00, 3),
(39, 2, 1, 1, '2026-03-01', 1499.00, 1),
 (40, 5, 9, 33, '2026-03-01', 59.99, 6),
(41, 6, 17, 35, '2026-03-01', 8000.00, 4),
 (42, 11, 25, 7, '2026-03-01', 120.00, 10),
(43, 3, 3, 1, '2026-03-01', 299.00, 2),  
 (44, 12, 11, 63, '2026-03-01', 45.00, 5),
(45, 8, 37, 70, '2026-03-01', 250.00, 1),
 (46, 14, 2, 31, '2026-03-01', 150.00, 2),
(47, 9, 13, 64, '2026-03-01', 80.00, 3),  
(48, 1, 10, 3, '2026-03-01', 499.99, 2),
(49, 4, 5, 32, '2026-03-01', 59.99, 12),
  (50, 7, 21, 66, '2026-03-01', 2500.00, 5);
  
  
  -- Nelle  seguente query verrà verificata la presenza della chiave primaria, l'univocità del valore -- 
  
select productID,
count(productID) as conteggioPK
from product 
group by productID
order by conteggiopk DESC; 

select CategoryID,
count(CategoryID) as conteggioPK
from Category 
group by CategoryID
order by conteggioPK DESC; 

select CityID,
count(CityID) as conteggioPK
from City 
group by cityID
order by conteggiopk DESC; 

select PriceListID,
count(PriceListID) as conteggioPK
from PriceList 
group by PriceListID
order by conteggiopk DESC; 

select CountryID,
count(CountryID) as conteggioPK
from Country 
group by CountryID
order by conteggiopk DESC; 

select RegionID,
count(RegionID) as conteggioPK
from Region 
group by RegionID
order by conteggiopk DESC; 

select SalesID,
count(SalesID) as conteggioPK
from Sales 
group by SalesID
order by conteggiopk DESC; 

select StoreID,
count(StoreID) as conteggioPK
from Store 
group by StoreID
order by conteggiopk DESC; 


/* 2)	Esporre l’elenco delle transazioni indicando nel result set il codice documento,
 la data, il nome del prodotto, la categoria del prodotto, il nome dello stato, 
 il nome della regione di vendita e un campo booleano valorizzato in base 
 alla condizione che siano passati più di 180 giorni dalla data vendita o meno (>180 -> True, <= 180 -> False) */ 
Select 
sale.salesID as CodiceProdotto, 
sale.Datesale as DataVendita,
Product.ProductName as NomeProdotto, 
Category.categoryName as CategoriaProdotto,
Country.CountryName as NomeStato,
Region.RegionName as NomeRegione,
IF(DATEDIFF(CURDATE(), sale.DateSale) > 180, 'True', 'False') AS PiuDi180Giorni
from sales as sale 
join product 
on Product.ProductID = Sale.ProductID
join category 
on product.CategoryID = category.CategoryID
JOIN Store as store 
ON sale.StoreID = store.StoreID
JOIN City as city 
ON store.CityID = city.CityID
JOIN Country as country 
ON city.CountryID = country.CountryID
JOIN Region as region 
ON country.RegionID = region.RegionID;



	/* Esporre l’elenco dei prodotti che hanno venduto, in totale, 
    una quantità maggiore della media delle vendite realizzate nell’ultimo anno censito.
    (ogni valore della condizione deve risultare da una query e non deve essere inserito a mano). 
    Nel result set devono comparire solo il codice prodotto e il totale venduto. */
SELECT 
    ProductID AS Codice_Prodotto, 
    SUM(Quantity) AS Totale_Venduto
FROM Sales
WHERE YEAR(DateSale) = (SELECT MAX(YEAR(DateSale)) FROM Sales)
GROUP BY ProductID
HAVING SUM(Quantity) > (
												/* Subquery per calcolare la media delle vendite 
                                                totali per prodotto nell'ultimo anno */
    SELECT AVG(TotalePerProdotto)
    FROM (
        SELECT SUM(Quantity) AS TotalePerProdotto
        FROM Sales
        WHERE YEAR(DateSale) = (SELECT MAX(YEAR(DateSale)) FROM Sales)
        GROUP BY ProductID
    ) AS MediaVendite
);




 /* Esporre l’elenco dei soli prodotti venduti 
 e per ognuno di questi il fatturato totale per anno. */
 
SELECT 
    product.ProductName AS NomeProdotto,
    YEAR(sales.DateSale) AS AnnoVendita,
    SUM(sales.UnitPrice * sales.Quantity) AS FatturatoTotale
FROM Sales as sales
JOIN Product as product 
ON sales.ProductID = product.ProductID
GROUP BY product.ProductName, YEAR(sales.DateSale)
ORDER BY AnnoVendita DESC, FatturatoTotale DESC;

/* Esporre il fatturato totale per stato per anno. 
Ordina il risultato per data e per fatturato decrescente. */

SELECT 
    country.CountryName AS NomeStato,
    YEAR(sales.DateSale) AS AnnoVendita,
    SUM(sales.UnitPrice * sales.Quantity) AS FatturatoTotale
FROM Sales as sales
JOIN Store as store ON sales.StoreID = store.StoreID
JOIN City as city ON store.CityID = city.CityID
JOIN Country as country ON city.CountryID = country.CountryID
GROUP BY country.CountryName, YEAR(sales.DateSale)
ORDER BY AnnoVendita DESC, FatturatoTotale DESC;

/* Rispondere alla seguente domanda: 
qual è la categoria di articoli maggiormente 
richiesta dal mercato? */

SELECT 
    category.CategoryName AS Categoria, 
    SUM(sales.Quantity) AS QuantitaTotaleVenduta
FROM Sales as sales
JOIN Product as product ON sales.ProductID = product.ProductID
JOIN Category as category ON product.CategoryID = category.CategoryID
GROUP BY category.CategoryName
ORDER BY QuantitaTotaleVenduta DESC; 


/* Rispondere alla seguente domanda: quali sono i prodotti invenduti? 
Proponi due approcci risolutivi differenti. */ 

/* seleziono tutti i prodotti e cerco quelli che, 
dopo il collegamento, non hanno dati di vendita associati. */

SELECT 
prod.ProductID, 
prod.ProductName
FROM Product as prod
LEFT JOIN Sales as sal ON prod.ProductID = sal.ProductID
WHERE sal.SalesID IS NULL;

/* in questo modo sto chiedendo di restituirmi 
i prodotti il cui ID non è contenuto nell'elenco degli ID venduti */

SELECT 
    ProductID, 
    ProductName
FROM Product
WHERE ProductID NOT IN (
    SELECT DISTINCT ProductID 
    FROM Sales
);



/* Creare una vista sui prodotti in modo tale 
da esporre una “versione denormalizzata”
 delle informazioni utili (codice prodotto,
 nome prodotto, nome categoria) */

CREATE VIEW VistaProdottiDettaglio AS
SELECT 
    prod.ProductID AS CodiceProdotto,
    prod.ProductName AS NomeProdotto,
    cat.CategoryName AS NomeCategoria
FROM Product as prod
JOIN Category as cat ON prod.CategoryID = cat.CategoryID;


/* Creare una vista per le informazioni geografiche */

CREATE VIEW VistaGeografia AS
SELECT 
    stor.StoreID AS CodiceNegozio,
    stor.StoreName AS NomeNegozio,
    cit.CityName AS Citta,
    coun.CountryName AS Stato,
    reg.RegionName AS Regione
FROM Store as stor
JOIN City as cit ON stor.CityID = cit.CityID
JOIN Country as coun ON cit.CountryID = coun.CountryID
JOIN Region as reg ON coun.RegionID = reg.RegionID;

