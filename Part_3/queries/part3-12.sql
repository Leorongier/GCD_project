SELECT C.NAME, Max_years, Average_years
FROM STDDATA_COUNTRY C, (
    SELECT COUNTRY_ID, MAX(Publishing_period) AS Max_years, AVG(Publishing_period) AS Average_years
    FROM (
        SELECT COUNTRY_ID, YEAR_ENDED-YEAR_BEGAN AS Publishing_period
        FROM GCD_PUBLISHER
        WHERE YEAR_BEGAN>=1600 AND YEAR_BEGAN<=2020 AND YEAR_ENDED>=1600 AND YEAR_ENDED<=2020
    )
    GROUP BY COUNTRY_ID
    ORDER BY Max_years DESC
)
WHERE C.ID=COUNTRY_ID AND ROWNUM<=10;

