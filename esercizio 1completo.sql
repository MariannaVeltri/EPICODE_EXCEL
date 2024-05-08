SELECT 
    *
FROM
    adv.dimproduct;

SELECT 
    dimproduct.ProductKey AS codice_prodotto,
    dimproduct.ProductAlternateKey AS codice_modello,
    dimproduct.EnglishProductName AS nome_inglese,
    dimproduct.Color AS colore,
    dimproduct.StandardCost AS costo_standard,
    dimproduct.FinishedGoodsFlag AS finito
FROM
    dimproduct;

SELECT 
    dimproduct.ProductKey AS codice_prodotto,
    dimproduct.ProductAlternateKey AS codice_modello,
    dimproduct.EnglishProductName AS nome_inglese,
    dimproduct.Color AS colore,
    dimproduct.StandardCost AS costo_standard,
    dimproduct.FinishedGoodsFlag AS finito
FROM
    dimproduct
WHERE
    dimproduct.FinishedGoodsFlag = 1;
 
SELECT 
    dimproduct.ProductKey AS codice_prodotto,
    dimproduct.ProductAlternateKey AS codice_modello,
    dimproduct.ModelName AS nome_modello,
    dimproduct.EnglishProductName AS nome_inglese,
    dimproduct.Color AS colore,
    dimproduct.StandardCost AS costo_standard,
    dimproduct.FinishedGoodsFlag AS finito,
    dimproduct.ListPrice AS prezzo_listino
FROM
    dimproduct
WHERE
    ProductAlternateKey LIKE '%FR%'
        OR ProductAlternateKey LIKE '%BK%';

SELECT 
    dimproduct.ProductKey AS codice_prodotto,
    dimproduct.ProductAlternateKey AS codice_modello,
    dimproduct.ModelName AS nome_modello,
    dimproduct.EnglishProductName AS nome_inglese,
    dimproduct.Color AS colore,
    dimproduct.StandardCost AS costo_standard,
    dimproduct.FinishedGoodsFlag AS finito,
    dimproduct.ListPrice AS prezzo_listino
FROM
    dimproduct
WHERE
    ListPrice BETWEEN 1000 AND 2000;

SELECT 
    *
FROM
    adv.dimemployee;

SELECT 
    *
FROM
    dimemployee
WHERE
    SalesPersonFlag = 1;

SELECT 
    *
FROM
    factresellersales;

SELECT 
    factresellersales.*, SalesAmount-TotalProductCost
FROM
    factresellersales
WHERE
    OrderDate >= '2020-01-01'
        AND ProductKey = 597
        OR ProductKey = 598
        OR ProductKey = 477
        OR ProductKey = 214
        /*ProductKey in (597,598,477,214)*/;
        


 