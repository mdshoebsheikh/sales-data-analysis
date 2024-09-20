-- Cleansed DIM Customers Table --
SELECT
    c.customerkey AS CustomerKey,
    -- [GeographyKey]
    -- [Customer AlternateKey]
    -- [Title]
    c.firstname AS [First Name],
    -- [MiddleName]
    c.lastname AS [Last Name],
    CONCAT(c.firstname, ' ', c.lastname) AS [Full Name], -- Combined First and Last Name
    -- [NameStyle]
    -- [BirthDate]
    -- [Marital Status]
    -- [Suffix]
    CASE 
        WHEN c.gender = 'M' THEN 'Male' 
        WHEN c.gender = 'F' THEN 'Female' 
        ELSE 'Other' 
    END AS Gender,
    -- [EmailAddress]
    -- [Yearly Income]
    -- [TotalChildren]
    -- [NumberChildrenAtHome]
    -- [EnglishEducation]
    -- [SpanishEducation]
    -- [FrenchEducation]
    -- [EnglishOccupation]
    -- [SpanishOccupation]
    -- [FrenchOccupation]
    -- [HouseOwnerFlag]
    -- [NumberCarsOwned]
    -- [AddressLine1]
    -- [AddressLine2]
    -- [Phone]
    c.datefirstpurchase AS DateFirstPurchase,
    -- [CommuteDistance]
    g.city AS [Customer City] -- Joined in Customer City from Geography Table
FROM
    dbo.dimcustomer AS c
LEFT JOIN 
    dbo.dimgeography AS g ON g.geographykey = c.geographykey
ORDER BY
    c.customerkey ASC; -- Ordered List by CustomerKey
