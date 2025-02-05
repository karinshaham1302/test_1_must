1.א

CREATE TABLE televisions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    catalog_number TEXT UNIQUE NOT NULL,
    brand TEXT CHECK(brand IN ('Samsung', 'LG', 'Sony')) NOT NULL,
    model TEXT NOT NULL,
    screen_size INTEGER CHECK(screen_size > 0) NOT NULL,
    resolution TEXT CHECK(resolution IN ('4K', '8K', 'Full HD')) NOT NULL,
    price REAL CHECK(price > 0) NOT NULL,
    stock_quantity INTEGER CHECK(stock_quantity >= 0) DEFAULT 0,
    release_year INTEGER,
    smart_tv TEXT CHECK(smart_tv IN ('yes', 'no')) NOT NULL,
    panel_type TEXT CHECK(panel_type IN ('OLED', 'QLED', 'LED')) NOT NULL
);


CREATE TABLE smart_tv_os (
    tv_id INTEGER,
    Os TEXT,
    PRIMARY KEY (tv_id),
    FOREIGN KEY (tv_id) REFERENCES televisions(id) ON DELETE CASCADE
);




1.ב

INSERT INTO televisions (catalog_number, brand, model, screen_size, resolution,
price, stock_quantity, release_year, smart_tv, panel_type)
VALUES ('876543210', 'Sony', 'X7500F', 43, 'Full HD', 1300.00, 40, 2019, 'no', 'LED');

INSERT INTO televisions (catalog_number, brand, model, screen_size, resolution,
price, stock_quantity, release_year, smart_tv, panel_type)
VALUES ('876543211', 'LG', 'C9', 55, '4K', 5000.00, 10, 2020, 'yes', 'OLED');

INSERT INTO televisions (catalog_number, brand, model, screen_size, resolution,
price, stock_quantity, release_year, smart_tv, panel_type)
VALUES ('345678901', 'Sony', 'A8H', 65, '4K', 4500.00, 12, 2021, 'yes', 'OLED');


INSERT INTO smart_tv_os (tv_id, Os)
VALUES (7, 'webOS');

INSERT INTO smart_tv_os (tv_id, Os)
VALUES (5, 'Android TV');


