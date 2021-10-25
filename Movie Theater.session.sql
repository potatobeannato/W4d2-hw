CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email_address VARCHAR(150)
);
CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    seat_num VARCHAR(50),
    movie_time VARCHAR(50),
    ticket_cost NUMERIC(5, 2)
);
CREATE TABLE inventory(
    upc SERIAL PRIMARY KEY,
    product_amount INTEGER
);
CREATE TABLE cart(
    cart_id SERIAL PRIMARY KEY,
    ticket_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY(ticket_id) REFERENCES tickets(ticket_id),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE concession(
    concession_id SERIAL PRIMARY KEY,
    amount NUMERIC(5, 2),
    product_name VARCHAR(50),
    upc INTEGER NOT NULL,
    FOREIGN KEY(upc) REFERENCES inventory(upc)
);
CREATE TABLE "order"(
    order_id SERIAL PRIMARY KEY,
    order_date DATE,
    sub_total NUMERIC(8, 2),
    total_cost NUMERIC(10, 2),
    cart_id INTEGER NOT NULL,
    upc INTEGER NOT NULL,
    concession_id INTEGER NOT NULL,
    FOREIGN KEY(cart_id) REFERENCES cart(cart_id),
    FOREIGN KEY(upc) REFERENCES inventory(upc),
    FOREIGN KEY(concession_id) REFERENCES concession(concession_id)
);
-- Customer is the main one and cart is being used with ticket_id and customer_id because it say who is the person buying and the tickets belong to them in the cart.
-- While order is what they can add into their order which include data from the cart concession and the inventory. 
-- Inventory is connect to concession because it need to have a certian amount in order to provide for the concession for people to buy