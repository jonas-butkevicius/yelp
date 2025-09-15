Data Type Correction and Discovery
During the initial import of the users JSON data into BigQuery, the schema auto-detection feature incorrectly inferred the elite column's data type as FLOAT64. This happened because some of the comma-separated year values, like '20,20', were misinterpreted as floating-point numbers.

Recognizing this was incorrect, I adjusted the import process by explicitly defining the table schema beforehand. I set the elite column to the STRING data type, which correctly accommodates a comma-separated list of years.

Upon inspecting the data after the successful import, I discovered the formatting anomaly. My assumption is that values written as 20,20 were intended to represent the year 2020. This finding prompted the data cleaning operation to standardize the year format within the column.
