                                                                                JOIN задачи (HW 2)
                                                                                
1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами. 
select * from employees 
join employees_salary on employees.id= employees_salary.employee_id  

2. Вывести всех работников у которых ЗП меньше 2000. 
select * from employees 
join employees_salary on employees.id= employees_salary.employee_id 
where employees_salary.monthly_salary < 2000 or employees_salary.monthly_salary = 2000

3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.) 
select * from employees_salary 
left join employees on employees_salary.employee_id = employees.id 
where employees.employee_name is null

4. Вывести все зарплатные позиции меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.) 
select * from employees_salary 
left join employees on employees_salary.employee_id = employees.id
where monthly_salary < 2000 and employees.employee_name is null 

5. Найти всех работников кому не начислена ЗП. 
select * from employees 
left join employees_salary on employees.id = employees_salary.id
where monthly_salary is null 

6. Вывести всех работников с названиями их должности. 
select e.id, e.employee_name, r.role_name from employees e 
join roles_employees re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
 
7. Вывести имена и должность только Java разработчиков.
select employee_name, role_name from employees 
join roles_employees on employees.id = roles_employees.employee_id
join roles on roles.id = roles_employees.role_id 
where roles.role_name like '%Java developer%'

8. Вывести имена и должность только Python разработчиков. 
select employee_name, role_name from employees 
join roles_employees on employees.id = roles_employees.employee_id 
join roles on roles.id = roles_employees.role_id 
where role_name like '%Python developer%'

9. Вывести имена и должность всех QA инженеров. 
select employee_name, role_name from employees e
join roles_employees re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
where role_name like '%QA%'
 
10. Вывести имена и должность ручных QA инженеров. 
select employee_name, role_name from employees e 
join roles_employees re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
where role_name like '%Manual QA%'
 
11. Вывести имена и должность автоматизаторов QA 
select employee_name, role_name from employees e 
join roles_employees re on re.employee_id = e.id 
join roles r on re.role_id = r.id 
where role_name like '%Automation%'
 
12. Вывести имена и зарплаты Junior специалистов 
select employee_name, monthly_salary, role_name, e.id from employees e 
join employees_salary es on e.id = es.employee_id 
join roles_employees re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where role_name like '%Junior%'

13. Вывести имена и зарплаты Middle специалистов 
select employee_name, monthly_salary from employees e 
join employees_salary es on e.id = es.employee_id 
join roles_employees re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where role_name like '%Middle%'
 
14. Вывести имена и зарплаты Senior специалистов 
select employee_name, monthly_salary from employees e 
join employees_salary es on e.id = employee_id 
join roles_employees re on es.employee_id = re.employee_id 
join roles r2 on re.role_id = r2.id 
where role_name like '%Senior%'

15. Вывести зарплаты Java разработчиков 
select monthly_salary from employees_salary es 
join roles_employees re on es.employee_id = re.employee_id 
join roles r2 on r2.id = re.role_id 
where role_name like '%Java developer%'
 
16. Вывести зарплаты Python разработчиков 
select monthly_salary from employees_salary es 
join roles_employees re on es.employee_id = re.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%Python developer%'

17. Вывести имена и зарплаты Junior Python разработчиков 
select employee_name, monthly_salary from employees e 
join employees_salary es on e.id = es.employee_id 
join roles_employees re on es.employee_id = re.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%Junior Python developer%'
 
18. Вывести имена и зарплаты Middle JS разработчиков 
select employee_name, monthly_salary from employees e 
join employees_salary es on e.id =es.employee_id 
join roles_employees re on es.employee_id = re.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%Middle JavaScript developer%'

19. Вывести имена и зарплаты Senior Java разработчиков
select employee_name, monthly_salary from employees e 
join employees_salary es on e.id =es.employee_id 
join roles_employees re on es.employee_id = re.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%Senior Java developer%'
 
20. Вывести зарплаты Junior QA инженеров 
select monthly_salary, role_name from employees_salary es 
join roles_employees re on es.employee_id = re.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%Junior Manual QA%' or role_name like '%Junior Automation QA%'
 
21. Вывести среднюю зарплату всех Junior специалистов 
select avg(monthly_salary) from employees_salary es 
join roles_employees re on es.employee_id = re.employee_id 
join roles r on re.id = r.id 
where role_name like '%Junior%'
 
22. Вывести сумму зарплат JS разработчиков 
select sum(es.monthly_salary) from employees_salary es 
join roles_employees re on es.employee_id =re.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%JavaScript%'
 
23. Вывести минимальную ЗП QA инженеров 
select min(es.monthly_salary) from employees_salary es 
join roles_employees re on es.employee_id =re.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%QA engineer%'
 
24. Вывести максимальную ЗП QA инженеров
select max(es.monthly_salary) from employees_salary es 
join roles_employees re on es.employee_id =re.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%QA engineer%'

25. Вывести количество QA инженеров 
select count(employee_id) as Количество_QA from roles_employees re 
join roles r on re.role_id = r.id 
where role_name like '%QA%'
 
26. Вывести количество Middle специалистов. 
select count(employee_id) as Количество_Middle from roles_employees re 
join roles r on re.role_id = r.id 
where role_name like '%Middle%'
 
27. Вывести количество разработчиков 
select count(employee_id) as Количество_разработчиков from roles_employees re 
join roles r on re.role_id = r.id 
where role_name like '%develop%'
 
28. Вывести фонд (сумму) зарплаты разработчиков. 
select sum(monthly_salary) from employees_salary es 
join roles_employees re on es.employee_id = re.employee_id 
join roles r on re.role_id = r.id
where role_name like '%develop%'
 
29. Вывести имена, должности и ЗП всех специалистов по возрастанию 
select e.employee_name, r.role_name, es.monthly_salary from employees e 
join employees_salary es on e.id = es.employee_id 
join roles_employees re on es.employee_id = re.employee_id 
join roles r on re.role_id = r.id
order by 3
 
30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300 
select employee_name, role_name, monthly_salary from employees e 
join employees_salary es on e.id = es.employee_id 
join roles_employees re on es.employee_id = re.employee_id 
join roles r on re.role_id = r.id 
where monthly_salary between 1700 and 2300
order by monthly_salary
 
31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300 
select employee_name, role_name, monthly_salary from employees e 
join employees_salary es on e.id = es.employee_id 
join roles_employees re on es.employee_id = re.employee_id 
join roles r on re.role_id = r.id 
where monthly_salary < 2301 
order by 3
 
32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name, role_name, monthly_salary from employees e 
join employees_salary es on e.id = es.employee_id 
join roles_employees re on es.employee_id = re.employee_id 
join roles r on re.role_id = r.id 
where monthly_salary in (1100, 1500, 2000)
order by 3
