--SQL HomeWork 2. Joins
--1.Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, monthly_salary  
from employees 
inner join employee_salary 
on employees.id = employee_salary.employee_id
inner join salary_1
on employee_salary.salary_id = salary_1.id;

--2.Вывести всех работников у которых ЗП меньше 2000.
select employee_name, monthly_salary
from employees 
inner join employee_salary 
on employees.id = employee_salary.employee_id
inner join salary_1 
on employee_salary.salary_id = salary_1.id
where monthly_salary < 2000;

--3.Вывести все зарплатные позиции, но работник по ним не назначен. 
--(ЗП есть, но не понятно кто её получает.)
select monthly_salary, employee_name
from employee_salary 
left join employees 
on employee_salary.employee_id=employees.id
left join salary_1 
on  employee_salary.salary_id=salary_1.id
where employee_name is null;

-- 4.Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. 
--(ЗП есть, но не понятно кто её получает.)
select monthly_salary, employee_name
from employee_salary 
left join employees 
on employee_salary.employee_id=employees.id
left join salary_1 
on  employee_salary.salary_id=salary_1.id
where  employee_name is null and monthly_salary < 2000;

-- 5.Найти всех работников кому не начислена ЗП.
select employees.id, employees.employee_name
from employees
left join employee_salary 
on employees.id= employee_salary.employee_id
left join salary_1 
on  employee_salary.salary_id=salary_1.id
where salary_1.id is null;

--6.Вывести всех работников с названиями их должности.
select employees.employee_name, roles_1.role_name
from employees
inner join roles_employee
on employees.id=roles_employee.employee_id 
inner join roles_1 
on roles_1.id=roles_employee.role_id ;

-- 7.Вывести имена и должность только Java разработчиков.
select employees.employee_name, roles_1.role_name
from employees
inner join roles_employee
on employees.id=roles_employee.employee_id 
inner join roles_1 
on roles_1.id=roles_employee.role_id 
where role_name like '%Java%';

--8.Вывести имена и должность только Python разработчиков.
select employees.employee_name, roles_1.role_name
from employees
inner join roles_employee
on employees.id=roles_employee.employee_id 
inner join roles_1 
on roles_1.id=roles_employee.role_id 
where role_name like '%Python%';

--9.Вывести имена и должность всех QA инженеров
select employees.employee_name, roles_1.role_name
from employees
inner join roles_employee
on employees.id=roles_employee.employee_id 
inner join roles_1 
on roles_1.id=roles_employee.role_id 
where role_name like '%QA%';

--10.Вывести имена и должность ручных QA инженеров.
select employees.employee_name, roles_1.role_name
from employees
inner join roles_employee
on employees.id=roles_employee.employee_id 
inner join roles_1 
on roles_1.id=roles_employee.role_id 
where role_name like '%Manual QA%';

--11.Вывести имена и должность автоматизаторов QA
select employees.employee_name, roles_1.role_name
from employees
inner join roles_employee
on employees.id=roles_employee.employee_id 
inner join roles_1 
on roles_1.id=roles_employee.role_id 
where role_name like '%Automation QA%';

-- 12.Вывести имена и зарплаты Junior специалистов
select employee_name, monthly_salary  
from employees 
inner join employee_salary 
on employees.id = employee_salary.employee_id
inner join salary_1
on employee_salary.salary_id = salary_1.id
inner join roles_employee
on employees.id=roles_employee.employee_id
inner join roles_1 
on roles_1.id=roles_employee.role_id 
where role_name like 'Junior%';

--13.Вывести имена и зарплаты Middle специалистов
select employee_name, monthly_salary  
from employees 
inner join employee_salary 
on employees.id = employee_salary.employee_id
inner join salary_1
on employee_salary.salary_id = salary_1.id
inner join roles_employee
on employees.id=roles_employee.employee_id
inner join roles_1 
on roles_1.id=roles_employee.role_id 
where role_name like 'Middle%';

--14.Вывести имена и зарплаты Senior специалистов
select employee_name, monthly_salary  
from employees 
inner join employee_salary 
on employees.id = employee_salary.employee_id
inner join salary_1
on employee_salary.salary_id = salary_1.id
inner join roles_employee
on employees.id=roles_employee.employee_id
inner join roles_1 
on roles_1.id=roles_employee.role_id 
where role_name like 'Senior%';

--15.Вывести зарплаты Java разработчиков
select monthly_salary  
from roles_1
inner join roles_employee  
on roles_1.id =roles_employee.role_id
inner join employee_salary  
on roles_employee.employee_id = employee_salary.employee_id 
inner join salary_1 
on salary_1.id = employee_salary.salary_id 
where roles_1.role_name like '%Java%';

--select monthly_salary
--from roles_1
--inner join roles_employee
--on roles_1.id =roles_employee.role_id 
--inner join employees 
--on roles_employee.employee_id = employees.id 
--inner join employee_salary
--on employees.id=employee_salary.employee_id 
--inner join salary_1
--on employee_salary.salary_id=salary_1.id
--where role_name like '%Java%';

--from employees 
--inner join employee_salary 
--on employees.id = employee_salary.employee_id
--inner join salary_1
--on employee_salary.salary_id = salary_1.id
--inner join roles_employee
--on employees.id=roles_employee.employee_id
--inner join roles_1 
--on roles_1.id=roles_employee.role_id 
--where role_name like '%Java%';

--16.Вывести зарплаты Python разработчиков
select monthly_salary  
from roles_1
inner join roles_employee  
on roles_1.id =roles_employee.role_id
inner join employee_salary  
on roles_employee.employee_id = employee_salary.employee_id 
inner join salary_1 
on salary_1.id = employee_salary.salary_id 
where roles_1.role_name like '%Python%';

--17.Вывести имена и зарплаты Junior Python разработчиков
select employee_name, monthly_salary  
from employees 
inner join employee_salary 
on employees.id = employee_salary.employee_id
inner join salary_1
on employee_salary.salary_id = salary_1.id
inner join roles_employee
on employees.id=roles_employee.employee_id
inner join roles_1 
on roles_1.id=roles_employee.role_id 
where role_name like '%Junior Python%';

--18.Вывести имена и зарплаты Middle JS разработчиков
select employee_name, monthly_salary  
from employees 
inner join employee_salary 
on employees.id = employee_salary.employee_id
inner join salary_1
on employee_salary.salary_id = salary_1.id
inner join roles_employee
on employees.id=roles_employee.employee_id
inner join roles_1 
on roles_1.id=roles_employee.role_id 
where role_name like '%Middle JavaScript%';

--19.Вывести имена и зарплаты Senior Java разработчиков
select employee_name, monthly_salary  
from employees 
inner join employee_salary 
on employees.id = employee_salary.employee_id
inner join salary_1
on employee_salary.salary_id = salary_1.id
inner join roles_employee
on employees.id=roles_employee.employee_id
inner join roles_1 
on roles_1.id=roles_employee.role_id 
where role_name like 'Senior Java%';

--select employee_name, monthly_salary  
--from employees 
--left join employee_salary 
--on employees.id = employee_salary.employee_id
--left join salary_1
--on employee_salary.salary_id = salary_1.id
--left join roles_employee
--on employees.id=roles_employee.employee_id
--left join roles_1 
--on roles_1.id=roles_employee.role_id 
--where role_name like 'Senior Java%';

--20.Вывести зарплаты Junior QA инженеров
select monthly_salary  
from roles_1
inner join roles_employee  
on roles_1.id =roles_employee.role_id
inner join employee_salary  
on roles_employee.employee_id = employee_salary.employee_id 
inner join salary_1 
on salary_1.id = employee_salary.salary_id 
where roles_1.role_name like '%Junior%QA%';
