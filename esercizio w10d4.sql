SELECT 
    *
FROM
    adv.dimproduct AS p
        JOIN
    adv.dimproductsubcategory AS c ON p.ProductSubcategoryKey = c.ProductSubcategoryKey;

SELECT 
    p.*,
    c.EnglishProductSubcategoryName,
    cc.EnglishProductCategoryName
FROM
    adv.dimproduct AS p
        JOIN
    adv.dimproductsubcategory AS c ON p.ProductSubcategoryKey = c.ProductSubcategoryKey
        JOIN
    adv.dimproductcategory AS cc ON cc.ProductCategoryKey = c.ProductCategoryKey;

SELECT 
    *
FROM
    adv.dimproduct AS p
        JOIN
    adv.factresellersales AS r ON p.ProductKey = r.ProductKey;

SELECT 
    *
FROM
    adv.dimproduct AS p
WHERE
    FinishedGoodsFlag = 1
        AND p.ProductKey NOT IN (SELECT 
            r.ProductKey
        FROM
            adv.factresellersales AS r);

SELECT 
    r.*, p.EnglishProductName
FROM
    adv.factresellersales AS r
        JOIN
    adv.dimproduct AS p ON p.ProductKey = r.ProductKey;
            
SELECT 
    r.*, c.EnglishProductCategoryName
FROM
    adv.factresellersales AS r
        JOIN
    adv.dimproduct AS p ON p.ProductKey = r.ProductKey
        JOIN
    adv.dimproductsubcategory AS sc ON sc.ProductSubcategoryKey = p.ProductSubcategoryKey
        JOIN
    adv.dimproductcategory AS c ON c.ProductCategoryKey = sc.ProductCategoryKey;

SELECT 
    *
FROM
    adv.dimreseller;

SELECT 
    r.*, g.EnglishCountryRegionName
FROM
    adv.dimreseller AS r
        JOIN
    adv.dimgeography AS g ON g.Geographykey = r.GeographyKey;
 
SELECT 
    f.SalesOrderNumber AS numero_ordine,
    f.SalesOrderLineNumber AS riga_ordine,
    f.OrderDate AS data_ordine,
    f.UnitPrice AS prezzo_unitario,
    f.TotalProductCost AS prezzo_totale,
    f.OrderQuantity AS quantità_ordine,
    r.ResellerName AS nome_venditore,
    p.EnglishProductName AS nome_prodotto,
    g.EnglishCountryRegionName AS area_geografica,
    c.EnglishProductSubcategoryName AS categoria_prodotto
FROM
    adv.factresellersales AS f
        JOIN
    adv.dimreseller AS r ON f.ResellerKey = r.ResellerKey
        JOIN
    adv.dimproduct AS p ON f.ProductKey = p.ProductKey
        JOIN
    adv.dimgeography AS g ON r.GeographyKey = g.GeographyKey
        JOIN
    adv.dimproductsubcategory AS c ON p.ProductSubcategoryKey = c.ProductSubcategoryKey
        
        
        
