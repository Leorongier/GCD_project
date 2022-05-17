load data 
CHARACTERSET UTF8
into table GCD_ISSUE
insert 
fields terminated by "|"
TRAILING NULLCOLS
(
    ID,
    EDITION_NUMBER,
    SERIES_ID ,
    INDICIA_PUBLISHER_ID,
    PUBLICATION_DATE,
    PRICE,
    CURRENCY,
    PAGE_COUNT,
    INDICIA_FREQUENCY,
    EDITING char(2048),
    NOTES char(4000),
    ISBN,
    VALID_ISBN,
    BARCODE,
    TITLE,
    ON_SALE_DATE,
    RATING
)