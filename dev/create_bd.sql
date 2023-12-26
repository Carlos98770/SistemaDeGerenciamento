CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    email VARCHAR(200),
    cpf VARCHAR(14),
    password VARCHAR(50)
);

CREATE TABLE managers (
    id SERIAL PRIMARY KEY,
    id_user INTEGER REFERENCES users(id)
);

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    id_user INTEGER REFERENCES users(id)
);

CREATE TABLE clients (
    id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    localization VARCHAR(200),
    cnpj VARCHAR(30)
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    discount FLOAT,
    price FLOAT,
    date_order DATE,
    id_client INTEGER REFERENCES clients(id)
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    price FLOAT,
    amount FLOAT,
    category VARCHAR(200)
);

create table manager_client(
    id_manager INTEGER REFERENCES managers(id),
    id_client INTEGER REFERENCES clients(id),
    create_date date
);

create table manager_Product(
    id_manager INTEGER REFERENCES managers(id),
    id_product INTEGER REFERENCES Products(id)
);

create table employee_order(
    id_employee INTEGER REFERENCES employees(id),
    id_order INTEGER REFERENCES orders(id)
);

create table Product_order(
    id_product INTEGER REFERENCES Products(id),
    id_order INTEGER REFERENCES orders(id)
);

