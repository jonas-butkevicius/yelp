CREATE OR REPLACE TABLE `peppy-hexagon-471408-c7.Yelp.yelp_business_categories` AS
SELECT 
  business_id,
  TRIM(category) AS category
FROM `peppy-hexagon-471408-c7.Yelp.yelp_business`,
  UNNEST(SPLIT(categories, ',')) AS category
