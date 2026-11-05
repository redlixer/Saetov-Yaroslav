
insert into client (last_name, first_name, email)
values
('Золо', 'Иван', 'ivan@example.org'),
('Петрова', 'Мария', 'maria@example.org');

insert into order_ (deadline, delivery_address , status)
values
('20.04.2026', 'ул. Горького, 5', 'в работе'),
('25.04.2026', 'пр. Мира, 12', 'в работе');

insert into product  (title, size_ , finish, price)
values
('Шкаф-купе «Пирожок»', '200×80×60', 'белый', '25000'),
('Шкаф-купе «Пирожок»', '200×80×60', 'белый', '25000'),
('Кровать «Аэродром»»', '180×200', 'дуб', ' 18000');

insert into brigade (specialization)
values
('раскрой и сборока'),
('окраска');

insert into operation (planned_date, actual_date)
values 
('10.04.2026','10.04.2026'),
('12.04.2026','12.04.2026'),
('11.04.2026','12.04.2026'),
('15.04.2026','15.04.2026');

insert into material (title, unit , planed_qty, actual_qty)
values
('ЛСДП белый', 'м^3', '4.2', '4.1'),
('Кромка ПВХ', 'м', '12.0', '10.0'),
('ЛДСП белый', 'м^3', '4.2', '4.1');

insert into employee (last_name, first_name, position)
values
('Темный', 'Андрей', 'Контролер'),
('Светлый', 'Максим', 'Контролер');

insert into quality_check (check_date, result)
values
('13.04.2026', 'Замечания'),
('14.04.2026', 'Успешно'),
('16.04.2026', 'Успешно');






