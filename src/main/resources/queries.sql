SELECT a.car_id, max (d.price)
FROM ads a
JOIN deal d
ON a.id = d.ads_id
WHERE a.deal_id IS NULL
GROUP BY car_id;

SELECT car_id
FROM ads
WHERE id IN (SELECT ads_id
      FROM deal
      WHERE price in
                   (SELECT MAX (price)
                    FROM deal
                    WHERE status = 'accept')
      AND status = 'accept')


SELECT year FROM
                 (SELECT count(*) as count , year FROM car
                 WHERE id IN
                           (SELECT car_id FROM ads WHERE deal_id IS NOT NULL)
                 GROUP BY year)
WHERE count = (SELECT MAX(count) FROM
                                     (SELECT count(*) as count, year FROM car
                                      WHERE id IN
                                                 (SELECT car_id FROM ads WHERE deal_id IS NOT NULL)
                                      GROUP BY year)
              )