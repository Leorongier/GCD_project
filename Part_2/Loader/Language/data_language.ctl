load data
CHARACTERSET UTF8
into table STDDATA_LANGUAGE
insert 
fields terminated by ","
TRAILING NULLCOLS
(
    ID,
    CODE,
    NAME
)