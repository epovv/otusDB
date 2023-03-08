CREATE TABLE category (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE price (
  id SERIAL PRIMARY KEY,
  value REAL NOT NULL,
  currency TEXT NOT NULL
);

CREATE TABLE supplier (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  address TEXT,
  phone TEXT
);

CREATE TABLE manufacturer (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  country TEXT NOT NULL
);

CREATE TABLE customer (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT NOT NULL,
  address TEXT,
  phone TEXT
);

CREATE TABLE product (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT,
  category_id INTEGER REFERENCES category(id),
  price_id INTEGER REFERENCES price(id),
  supplier_id INTEGER REFERENCES supplier(id),
  manufacturer_id INTEGER REFERENCES manufacturer(id)
);

CREATE TABLE purchase (
  id SERIAL PRIMARY KEY,
  product_id INTEGER REFERENCES product(id),
  customer_id INTEGER REFERENCES customer(id),
  purchase_date TIMESTAMP NOT NULL DEFAULT NOW(),
  quantity INTEGER NOT NULL,
  price_at_purchase REAL NOT NULL
);
