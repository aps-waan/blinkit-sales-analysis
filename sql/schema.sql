CREATE TABLE blinkit_data (
    item_identifier VARCHAR(20),
    item_weight DECIMAL(6,2),
    item_fat_content VARCHAR(20),
    item_visibility DECIMAL(12,9),
    item_type VARCHAR(50),
    item_mrp DECIMAL(10,2),

    outlet_identifier VARCHAR(20),
    outlet_establishment_year INT,
    outlet_size VARCHAR(20),
    outlet_location_type VARCHAR(20),
    outlet_type VARCHAR(50),

    sales DECIMAL(10,4),
    rating DECIMAL(3,2)
);
