--Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.
create table employees(
 id serial primary key,
 employee_name varchar(50) unique not null
);
select * from employees;
insert into employees(employee_name)
values ('Обуховский'),
	   ('Овчинников'),
	   ('Ольховик'),
	   ('Онищук'),
	   ('Орешко'),
	   ('Кравчук'),
	   ('Савинич'),
	   ('Бобич'),
	   ('Смолич'),
	   ('Яремич'),
	   ('Станкевич'),
	   ('Тарасевiч'),
	   ('Петрова'),
	   ('Ковалёв'),
	   ('Боуко'),
	   ('Кузмич'),
	   ('Климович'),
	   ('Макаревич'),
	   ('Санкевич'),
	   ('Осипович'),
	   ('Левкович'),
	   ('Богданович'),
	   ('Юшкевич'),
	   ('Юхим'),
	   ('Павлович'),
	   ('Пашкевич'),
	   ('Мацкевич'),
	   ('Гуринович'),
	   ('Адамович'),
	   ('Дашкевич'),
	   ('Герасимович'),
	   ('Вашкевич'),
	   ('Нестерович'),
	   ('Гриневич'),
	   ('Мартинович'),
	   ('Максимович'),
	   ('Янушкевич'),
	   ('Якубович'),
	   ('Левкувич'),
	   ('Ермакович'),
	   ('Крувчук'),
	   ('Сывинич'),
	   ('Бэбич'),
	   ('Смылич'),
	   ('Ярэмич'),
	   ('Сткевич'),
	   ('Турасевич'),
	   ('Шибеко'),
	   ('Владыко'),
	   ('Шкурко'),
	   ('Гришко'),
	   ('Чуйко'),
	   ('Латушко'),
	   ('Орешков'),
	   ('Турко'),
	   ('Крутько'),
	   ('Галушко'),
	   ('Щурко'),
	   ('Черепко'),
	   ('Толочко'),
	   ('Лепешко'),
	   ('Зубко'),
	   ('Бусько'),
	   ('Ромашко'),
	   ('Дорошко'),
	   ('Лапко'),
	   ('Шарко'),
	   ('Сушко'),
	   ('Цвирко'),
	   ('Дудко');
--Создать таблицу salary
--id. Serial  primary key,
--monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:
create table salary_1(
 id serial primary key,
monthly_salary int not null
);
insert into salary_1(monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);
select *from salary_1;
--Создать таблицу employee_salary
--id. Serial  primary key,
--employee_id. Int, not null, unique
--salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
--в 10 строк из 40 вставить несуществующие employee_id
create table employee_salary(
 id serial primary key,
 employee_id int unique not null,
 salary_id int not null
);
select * from employee_salary; 
insert into employee_salary(employee_id, salary_id)
values  (1,8),
		(4,5),
		(3,10),
		(2,11),
		(7,1),
		(12,6),
		(15,9),
		(23,3),
		(45,6),
		(44,15),
		(25,13),
		(51,8),
		(67,2),
		(40,14),
		(59,2),
		(36,1),
		(24,15),
		(34,5),
		(66,12),
		(6,13),
		(22,3),
		(33,13),
		(41,16),
		(58,1),
		(60,4),
		(65,14),
		(57,3),
		(63,7),
		(64,9),
		(55,11),
		(79,12),
		(86,9),
		(98,8),
		(110,7),
		(96,6),
		(102,5),
		(90,4),
		(71,3),
		(103,2),
		(150,1);
--Создать таблицу roles
--id. Serial  primary key,
--role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:
create table roles_1(
 id serial primary key,
 role_name int unique not null
);
select * from roles_1;
alter table roles_1
alter column role_name type varchar(30);
insert into roles_1(role_name)
values ('Junior Python developer'),
	   ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');
--Создать таблицу roles_employee
--id. Serial  primary key,
--employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:
create table roles_employee(
 id serial primary key,
 employee_id int unique not null,
 role_id int not null
);
select * from roles_employee;
insert into  roles_employee( employee_id, role_id)
values (1,2),
	   (2,3),
	   (4,5),
	   (3,1),
	   (6,4),
	   (8,10),
	   (9,6),
	   (7,3),
	   (5,11),
	   (10,13),
	   (15,20),
	   (17,12),
	   (34,19),
	   (36,16),
	   (23,14),
	   (33,17),
	   (40,18),
	   (39,15),
	   (69,7),
	   (22,8),
	   (27,20),
	   (24,19),
	   (50,1),
	   (51,3),
	   (66,4),
	   (61,2),
	   (21,18),
	   (59,16),
	   (60,13),
	   (62,15),
	   (25,5),
	   (31,8),
	   (32,9),
	   (52,10),
	   (11,11),
	   (13,7),
	   (16,12),
	   (46,6),
	   (42,14),
	   (48,17);
