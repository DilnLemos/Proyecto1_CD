CREATE TABLE dim_customer (
    id_customer INTEGER PRIMARY KEY,
    gender TEXT,
    age INTEGER
);

CREATE TABLE dim_category (
    id_category INTEGER PRIMARY KEY,
    category TEXT
);

CREATE TABLE dim_date (
    id_date INTEGER PRIMARY KEY,
    invoice_date DATE,
    day INTEGER,
    month INTEGER,
    year INTEGER
);

CREATE TABLE dim_store (
    id_mall INTEGER PRIMARY KEY,
    shopping_mall TEXT
);

CREATE TABLE dim_payment (
    id_payment_method INTEGER PRIMARY KEY,
    payment_method TEXT
);

CREATE TABLE fact_sales (
    id_invoice INTEGER PRIMARY KEY,
    id_customer INTEGER REFERENCES dim_customer(id_customer),
    id_category INTEGER REFERENCES dim_category(id_category),
    id_date INTEGER REFERENCES dim_date(id_date),
    id_mall INTEGER REFERENCES dim_store(id_mall),
    id_payment_method INTEGER REFERENCES dim_payment(id_payment_method),
    quantity INTEGER,
    unit_price NUMERIC(10,2),
    total_price NUMERIC(10,2)
);