CREATE DATABASE IF NOT EXISTS project_housing_data;
USE project_housing_data;

CREATE TABLE IF NOT EXISTS nashville_housing
(
	unique_id INT,
    parcel_id VARCHAR(55),
    land_use VARCHAR(55),
    property_address VARCHAR(100),
    sale_date CHAR(50),
    sale_price INT,
    legal_reference VARCHAR(55),
    sold_as_vacant CHAR(10),
    owner_name VARCHAR(70),
    owner_address VARCHAR(80),
    acreage DECIMAL(10,2),
    tax_district VARCHAR(60),
    land_value INT,
    building_value INT,
    total_value INT,
    year_built CHAR(10),
    bedrooms INT,
    full_bath INT,
    half_bath INT
)
    