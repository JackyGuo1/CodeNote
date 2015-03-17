UPDATE "LagouJob" set "CategoryId" = subq.cid
FROM (
	SELECT "CategoryId" as cid ,"Position" as position FROM "TitleClassifier"
) as subq
where "LagouJob"."Title" like '%'||subq.position||'%';
