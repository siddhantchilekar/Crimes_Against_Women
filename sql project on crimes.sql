select * from crimes;
select Year, sum(total_crimes) from crimes group by Year;
select state , sum(total_crimes) as tot_crime_per_state from crimes group by state ;
ALTER TABLE crimes
RENAME TO CrimesOnWomen;
SELECT Total_Crimes FROM CrimesOnWomen WHERE State = 'ANDHRA PRADESH' AND Year = 2001;
SELECT State FROM CrimesOnWomen WHERE Year = 2001 ORDER BY Rape DESC LIMIT 1;
SELECT Year, SUM(Total_Crimes) AS Total_Crimes FROM CrimesOnWomen GROUP BY Year;
SELECT State, MAX(Total_Crimes) AS Highest_Crimes 
FROM CrimesOnWomen 
WHERE Year = 2021 
GROUP BY State 
ORDER BY Highest_Crimes DESC 
LIMIT 1;
SELECT Year, SUM(Rape) AS Total_Rapes 
FROM CrimesOnWomen 
GROUP BY Year 
ORDER BY Year;
SELECT State, STDDEV(Dv) AS Consistency 
FROM CrimesOnWomen 
GROUP BY State 
ORDER BY Consistency ASC 
LIMIT 1;
SELECT State, AVG(DD) AS Avg_Dowry_Deaths 
FROM CrimesOnWomen 
GROUP BY State 
ORDER BY Avg_Dowry_Deaths DESC 
LIMIT 5;
SELECT State 
FROM CrimesOnWomen 
GROUP BY State 
HAVING SUM(WT) = 0;
SELECT Year, SUM(Total_Crimes) AS Total_Crimes 
FROM CrimesOnWomen 
GROUP BY Year 
ORDER BY Total_Crimes ASC 
LIMIT 1;
SELECT cw1.State, cw1.total_crimes AS Crimes_2018, cw2.Total_Crimes AS Crimes_2019
FROM CrimesOnWomen as cw1
JOIN CrimesOnWomen as cw2 
ON cw1.State = cw2.State
WHERE cw1.Year = 2018 AND cw2.Year = 2019
AND cw1.total_crimes > 50000 AND cw2.total_rimes > 50000;