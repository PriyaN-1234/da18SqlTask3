
Select * from course
Select * from student
Select * from  department
Select * from  teacher
Select * from  enrollment

--25 select query

select course_name from course
select course_name, course_fee from course
select * from course order by course_fee asc
select * from course order by course_name asc
select student_name from student
select student_name, age from student
select * from student order by age asc
select * from  student order by student_name asc
select count(*) as total_student from student
select department_name from department
select department_name, location from department
select * from department order by department_name asc
select * from  department order by location asc
select distinct department_name from department
select distinct location from department
select count(*) as total_departments from department
select teacher_name, subject from teacher;
select * from teacher order by experience_year asc
select * from teacher order by teacher_name asc
select count(*) as total_teachers from teacher
select student_id, status from enrollment;
select avg(course_fee) as avg_fee from course
select * from enrollment ORDER BY enrollment_date ASC
select distinct status from enrollment
select count(*) as total_enrollment from enrollment

--25 where query

select * from course where course_fee > 20000
select * from course where course_duration = 90
select * from course where course_duration > 45
select * from course where course_name like '%Data%'
select * from student where age > 21
select * from student where course_id = 103
select * from student where gender = 'Female'
select * from student where student_name like '%Patel%'
select * from department where location = 'Mumbai'
select * from department where department_name like '%Finance%'
select * from teacher where experience_year > 10
select * from teacher where subject = 'Physics'
select * from teacher where department_id = 003
select * from teacher where teacher_name like '%Gupta%'
select * from enrollment where status = 'Active'
select * from enrollment where teacher_id = 303
select * from enrollment where student_id > 2
select * from course where course_duration = 60
select * from course where course_name = 'Cloud computing'
select * from course where course_fee >30000
select * from student where gender = 'Male'
select * from student where age = 22
select * from student where student_name like 'A%'
select * from student where email like '%example%'
select * from department where department_name = 'Finance'
select * from department where department_name like '%IT%'

--25 and query

select * from course where course_duration>30 and course_fee>20000
select * from course where course_duration=90 and course_fee<40000
select * from course where course_name like '%Dvelopment%' and course_duration>45
select * from enrollment where enrollment_date between '2025-04-01' and '2025-04-30'
select * from course where course_duration between 30 and 90
select * from course where course_id>102 and course_fee<30000
select * from student where gender = 'Male' and age>21
select * from student where email like '%example%' and course_id=105
select * from student where course_id=102 and age=22
select * from department where department_name like '%Development%' and location <> 'Mumbai'
select * from department where location = 'Mumbai' and department_name = 'IT'
select * from teacher where teacher_name like 'D%' and experience_year < 10
select * from teacher where subject in ('Physics','Chemistry','Biology') and experience_year >8
select * from teacher where department_id < 004 and subject like '%Chemistry%'
select * from enrollment where status = 'Active' and enrollment_date > '2025-04-01'
select * from enrollment where student_id = 1 and teacher_id = 301;
select * from enrollment where status = 'Completed' and enrollment_date < '2025-04-01'
select * from enrollment where student_id > 2 and status = 'Active'
select * from enrollment where enrollment_date between '2025-03-01' and '2025-03-31' and status='Completed'
select * from enrollment where teacher_id=305 and student_id=5
select * from enrollment where teacher_id < 304 and status = 'Active'
select * from enrollment where enrollment_date > '2025-03-10' and enrollment_date < '2025-04-10'
select * from enrollment where student_id %2=0 and teacher_id%2=1
select * from enrollment where status='Completed' and teacher_id>302

--25 or query

select * from course where course_duration>30 or course_fee>20000
select * from course where course_duration=90 or course_fee<40000
select * from course where course_name like '%Dvelopment%' or course_duration>45
select * from course where course_id>102 or course_fee<30000
select * from student where gender = 'Male' or age>21
select * from student where email like '%example%' or course_id=105
select * from student where course_id=102 or age=22
select * from department where department_name like '%Development%' or location <> 'Mumbai'
select * from department where location = 'Mumbai' or department_name = 'IT'
select * from teacher where teacher_name like 'D%' or experience_year < 10
select * from teacher where subject in ('Physics','Chemistry','Biology') or experience_year >8
select * from teacher where department_id < 004 or subject like '%Chemistry%'
select * from enrollment where status = 'Active' or enrollment_date > '2025-04-01'
select * from enrollment where student_id = 1 or teacher_id = 301
select * from enrollment where status = 'Completed' or enrollment_date < '2025-04-01'
select * from enrollment where student_id > 2 or status = 'Active'
select * from enrollment where enrollment_date between '2025-03-01' and '2025-03-31' or status='Completed'
select * from enrollment where teacher_id=305 or student_id=5
select * from enrollment where teacher_id < 304 or status = 'Active'
select * from enrollment where enrollment_date > '2025-03-10' or enrollment_date < '2025-04-10'
select * from enrollment where student_id %2=0 or teacher_id%2=1
select * from enrollment where status='Completed' or teacher_id>302

--5 not query

select * from student where course_id not in (select course_id from course where course_name='Data Science Basics')
select * from department where location not in('Mumbai')
select * from enrollment where status not like 'Active'
select * from course where course_fee > 20000
select * from course where not course_duration = 90 


-- 25 use all above query

select * from course where course_fee > 20000 and course_duration > 45;
select * from course where course_name = 'Data Science Basics' or course_name = 'Web Development Bootcamp'
select * from course where not course_fee < 25000
select * from course where course_duration = 60 or course_fee > 30000
select * from course where not course_name = 'Cloud computing' and course_fee < 40000
select * from student where age = 20 OR course_id = 103
select * from student where not gender = 'Male' and course_id = 102
select * from student where student_name like 'A%' and not age = 21
select * from student where email like '%.com' or age > 22
select * from student where not course_id = 101 or age < 22
select * from department where not location = 'Mumbai' or department_name like '%Finance%'
select * from department where department_name = 'IT' or not location = 'Bangalore'
select * from department where not department_name = 'Human Resources' and location = 'Delhi'
select * from department where not location = 'Delhi' or not department_name ='Research and Development'
select * from department where location ='Mumbai' and not department_name = 'Finance'
select * from teacher where experience_year > 10 OR department_id = 004
select * from teacher where not department_id = 003 and experience_year > 8
select * from teacher where not subject = 'Biology' and not department_id = 002
select * from enrollment where not status = 'Completed' or enrollment_date > '2025-04-01'
select * from enrollment where enrollment_date < '2025-03-10' and status = 'Active'
select * from  enrollment where status = 'Completed' or teacher_id = 303
select * from enrollment where not teacher_id = 305 and status = 'Active'
select * from enrollment where enrollment_date between '2025-04-01' and '2025-04-30' and not teacher_id = 301
select * from enrollment where status = 'Active' or teacher_id < 304
select * from enrollment where not student_id < 3 and enrollment_date < '2025-04-15'
select * from enrollment where (teacher_id = 301 or teacher_id = 305) and status = 'Active'
select * from enrollment where not enrollment_date between '2025-03-01' and '2025-03-31' or not status = 'Completed'






