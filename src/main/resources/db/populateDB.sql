TRUNCATE user_roles;
TRUNCATE meals;
TRUNCATE users CASCADE;
ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users (name, email, password)
VALUES ('User', 'user@yandex.ru', 'password'),
       ('Admin', 'admin@gmail.com', 'admin');

INSERT INTO user_roles (role, user_id)
VALUES ('ROLE_USER', 100000),
       ('ROLE_ADMIN', 100001);


INSERT INTO meals (datetime, description, calories, user_id)
VALUES ('2020-01-30 10:00:00', 'Завтрак', 500, 100000),
       ('2020-01-30 13:00:00', 'Обед', 1000, 100000),
       ('2020-01-30 20:00:00', 'Ужин', 500, 100000),
       ('2020-01-31 00:00:00', 'Еда на граничное значение', 100, 100000),
       ('2020-01-31 10:00:00', 'Завтрак', 1000, 100000),
       ('2020-01-31 13:00:00', 'Обед', 500, 100000),
       ('2020-01-31 20:00:00', 'Ужин', 410, 100000),
       ('2020-01-30 09:00:00', 'Еда', 400, 100001),
       ('2020-01-30 12:00:00', 'Средняя еда', 600, 100001),
       ('2020-01-30 19:00:00', 'Обжиралово', 1200, 100001),
       ('2020-01-31 01:00:00', 'Еда на граничное значение', 100, 100001),
       ('2020-01-31 13:00:00', 'Завтрак', 600, 100001),
       ('2020-01-31 16:00:00', 'Полдник', 200, 100001),
       ('2020-01-31 21:00:00', 'Пропустил обед', 600, 100001);

