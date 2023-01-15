--extracting the 10 industries which the most increases of jobs --
select top 10 industry, jobs_2011, jobs_2014, sum(change) as change
FROM [jobEng].[dbo].[JobUK]
group by change, industry, city, jobs_2011, jobs_2014
order by change

-- doing the same for the 10 industries who had the most decrease of jobs --
select industry, city, max(jobs_2011), jobs_2014, sum(change) as change
FROM [jobEng].[dbo].[JobUK]
group by change, industry, city, jobs_2011, jobs_2014
order by change asc
