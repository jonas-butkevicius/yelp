CREATE OR REPLACE TABLE `peppy-hexagon-471408-c7.Yelp.yelp_business_categories` AS
SELECT 
  business_id,
  TRIM(category) AS category
FROM `peppy-hexagon-471408-c7.Yelp.yelp_business`,
  UNNEST(SPLIT(categories, ',')) AS category


-- This creates a new table with the corrected 'elite' column
CREATE OR REPLACE TABLE `peppy-hexagon-471408-c7.Yelp.yelp_user_cleaned` AS (
  SELECT
    -- This selects all columns EXCEPT the old, broken 'elite' column
    * EXCEPT (elite),
    -- This adds our new, fixed array column and names it 'elite_years'
    REGEXP_EXTRACT_ALL(CAST(elite AS STRING), r'\d{4}') AS elite_years
  FROM
    `peppy-hexagon-471408-c7.Yelp.yelp_user`
);
