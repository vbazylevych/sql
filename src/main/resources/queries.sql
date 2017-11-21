SELECT a.car_id, max (d.price)
FROM ads a
JOIN deal d
ON a.id = d.ads_id
WHERE a.deal_id IS NULL
GROUP BY car_id;

SELECT car_id
FROM ads
JOIN (SELECT ads_id
      FROM deal
      WHERE price in
                   (SELECT MAX (price)
                    FROM deal
                    WHERE status = 'accept')
      AND status = 'accept') AS A
ON ads.id = A.ads_id;


CREATE VIEW Stat AS
SELECT COUNT(*) as count, year FROM car
JOIN ADS
ON CAR.ID = ADS.CAR_ID
WHERE ads.deal_id is not null
GROUP BY year;

SELECT year FROM Stat WHERE count = (SELECT MAX(count)
                                     FROM Stat);

select count(*), year from car join (select car_id from ads where deal_id is not null) ON car_id=id group by year ;
select max (count) from (select count(*) as count, year from car join (select car_id from ads where deal_id is not null) ON car_id=id group by year )

select year from (select count(*) as count, year from car join (select car_id from ads where deal_id is not null) ON car_id=id group by year)
where count = (select max (count) from (select count(*) as count, year from car join (select car_id from ads where deal_id is not null) ON car_id=id group by year ))