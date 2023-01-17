--extracting the 10 industries which the most increases of jobs --
select top 10 industry, jobs_2011, jobs_2014, sum(change) as change
FROM [jobEng].[dbo].[JobUK]
WHERE City = 'London'
group by change, industry, jobs_2011, jobs_2014
order by change

-- doing the same for the 10 industries who had the most decrease of jobs --
select top 10 industry, jobs_2011, jobs_2014, sum(change) as change
WHERE City = 'London'
FROM [jobEng].[dbo].[JobUK]
group by change, industry, city, jobs_2011, jobs_2014
order by change asc

--percentage--

select industry, jobs_2011, jobs_2014, change, (change/Jobs_2011)*100 as 'percentage'
FROM [jobEng].[dbo].[JobUK]
where City = 'London' and Jobs_2011 != 0 
group by change, industry, city, jobs_2011, jobs_2014
order by change

-- negative percentage--

select industry, jobs_2011, jobs_2014, change, (change/Jobs_2011)*100 as 'percentage'
FROM [jobEng].[dbo].[JobUK]
where City = 'London' and Jobs_2011 != 0 
group by change, industry, city, jobs_2011, jobs_2014
order by change asc
