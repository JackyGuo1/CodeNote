
--Find all trigger
select * from pg_trigger

--Find all functions in myschema
SELECT  p.proname
FROM    pg_catalog.pg_namespace n
JOIN    pg_catalog.pg_proc p
ON      p.pronamespace = n.oid
WHERE   n.nspname = 'myschema'

--Find the src of function myfunction
SELECT prosrc FROM pg_proc WHERE proname='myfunction'
