INSERT INTO customers(first_name, last_name, email_address)
VALUES('Mike', 'Hard', 'lemonade@seltzer.com'),
    ('Bud', 'Light', 'sponsor@beer.com'),
    ('Angry', 'Orchard', 'apple@hardcider.com'),
    ('White', 'Claw', 'fruit@seltzer.com')
INSERT INTO tickets(seat_num, movie_time, ticket_cost)
VALUES('1', '8:00 p.m', '12.00'),
    ('2', '8:00 p.m', '12.00'),
    ('3', '8:00 p.m', '12.00'),
    ('4', '8:00 p.m', '12.00')
INSERT INTO inventory(product_amount)
VALUES(20),
    (20),
    (20),
    (20)
INSERT INTO cart(ticket_id, customer_id)
VALUES(1, 1),
    (2, 2),
    (3, 3),
    (4, 4)
INSERT INTO concession(amount, product_name, upc)
VALUES('5', 'popcorn', 1),
    ('5', 'candy corn', 2),
    ('5', 'soda', 3),
    ('5', 'hot dog', 4)
INSERT INTO "order"(
        order_date,
        sub_total,
        total_cost,
        cart_id,
        upc,
        concession_id
    )
VALUES('10/19/2021', '50.00', '62.00', 1, 1, 1),
    ('10/19/2021', '30', '42.00', 2, 2, 2),
    ('10/19/2021', '10', '22.00', 3, 3, 3),
    ('10/19/2021', '25', '37.00', 4, 4, 4)