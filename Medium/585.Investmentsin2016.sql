/** select sum(i2.tiv_2015 + i2.tiv_2016) as tiv_2016
from insurance i2
join  insurance i1 on i1.pid != i2.pid and i2.lat != i1.lat and i2.lon != i1.lon 
where i2.tiv_2015 = i2.tiv_2016 ***/

SELECT
    SUM(insurance.TIV_2016) AS TIV_2016
FROM
    insurance
WHERE
    insurance.TIV_2015 IN
    (
      SELECT
        TIV_2015
      FROM
        insurance
      GROUP BY TIV_2015
      HAVING COUNT(*) > 1
    )
    AND CONCAT(LAT, LON) IN
    (
      SELECT
        CONCAT(LAT, LON)
      FROM
        insurance
      GROUP BY LAT , LON
      HAVING COUNT(*) = 1
    )
;
