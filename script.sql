USE ChicagoDataDB

-- Problem 1: Find the total number of crimes recorded in the CRIME table.
SELECT count(ID) AS "Number of Crimes in Chicago" FROM dbo.ChicagoCrimeData;
---- Problem 2: List community areas with per capita income less than 11000.
SELECT COMMUNITY_AREA_NAME FROM dbo.CensusData WHERE PER_CAPITA_INCOME < 11000;
---- Problem 3: List all case numbers for crimes  involving minors?(children are not considered minors for the purposes of crime analysis)
SELECT CASE_NUMBER FROM dbo.ChicagoCrimeData WHERE DESCRIPTION LIKE '%MINOR%';
---- Problem 4: List all kidnapping crimes involving a child?
SELECT * FROM dbo.ChicagoCrimeData WHERE DESCRIPTION LIKE '%CHILD%' AND PRIMARY_TYPE = 'KIDNAPPING';
---- Problem 5: What kind of crimes were recorded at schools?
SELECT DISTINCT PRIMARY_TYPE FROM dbo.ChicagoCrimeData WHERE LOCATION_DESCRIPTION LIKE '%SCHOOL%';
---- Problem 6: List the average safety score for all types of schools.
SELECT Elementary_Middle_or_High_School, AVG(SAFETY_SCORE) FROM dbo.ChicagoPublicSchools GROUP BY Elementary_Middle_or_High_School;
---- Problem 7: List 5 community areas with highest % of households below poverty line.
SELECT TOP(5) COMMUNITY_AREA_NAME, PERCENT_HOUSEHOLDS_BELOW_POVERTY FROM dbo.CensusData ORDER BY PERCENT_HOUSEHOLDS_BELOW_POVERTY DESC;
---- Problem 8: Which community area(number) is most crime prone?
SELECT TOP(1) COMMUNITY_AREA_NUMBER, COUNT(ID) AS "NUMBER OF CRIMES" FROM dbo.ChicagoCrimeData WHERE COMMUNITY_AREA_NUMBER IS NOT NULL GROUP BY COMMUNITY_AREA_NUMBER ORDER BY COUNT(ID) DESC;
---- Problem 9: Use a sub-query to find the name of the community area with highest hardship index.
SELECT COMMUNITY_AREA_NAME, HARDSHIP_INDEX FROM dbo.CensusData WHERE HARDSHIP_INDEX = (SELECT MAX(HARDSHIP_INDEX) FROM dbo.CensusData);
---- Problem 10: Use a sub-query to determine the Community Area Name with most number of crimes?
SELECT COMMUNITY_AREA_NAME AS "COMMUNITY AREA WITH MOST NUMBER OF CRIMES" FROM dbo.CensusData WHERE COMMUNITY_AREA_NUMBER = (SELECT TOP(1) COMMUNITY_AREA_NUMBER FROM dbo.ChicagoCrimeData WHERE COMMUNITY_AREA_NUMBER IS NOT NULL GROUP BY COMMUNITY_AREA_NUMBER ORDER BY COUNT(ID) DESC);
