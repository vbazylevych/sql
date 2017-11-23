SELECT a.car_id, max (d.price)
FROM ads a
JOIN deal d
ON a.id = d.ads_id
WHERE a.deal_id IS NULL
GROUP BY car_id;



SELECT car_id FROM
                  (SELECT car_id, deal.price FROM ads
                   JOIN deal
                   ON ads.deal_id = deal.id
                   ORDER BY price DESC
                   limit 1);

 SELECT year FROM
                 (SELECT COUNT (*), year FROM car
                  JOIN ads ON car.id = ads.car_id
                  WHERE ads.deal_id IS NOT NULL
                  GROUP BY year
                  limit 1);