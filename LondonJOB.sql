/****** Script per comando SelectTopNRows da SSMS  ******/
SELECT  top 20 industry, jobs_2011, jobs_2014, change
  FROM [jobEng].[dbo].[JobUK]
WHERE change > 50
order by change desc


SELECT top 20 city, industry,SIC_1_name, jobs_2011, jobs_2014, change
  FROM [jobEng].[dbo].[JobUK]
order by change asc


/* JUST CALLING OUT EVERYTHING*/
Select *
FROM [jobEng].[dbo].[JobUK]

/*TRY TO SUM THE INDUSTRY AND ORDER RESULTS BY NUMBER OF CHANGE*/
select industry, city, sum(jobs_2011) as jobs2011, sum(jobs_2014) as jobs2014, sum(change) as change
FROM [jobEng].[dbo].[JobUK]
where change < - 100
group by change, industry, city
order by change

select industry, city, max(jobs_2011), jobs_2014, sum(change) as change
FROM [jobEng].[dbo].[JobUK]
where change < - 100
group by change, industry, city, jobs_2011, jobs_2014
order by change