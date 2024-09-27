select * from employee;
select * from job;
select * from department;
select * from location;
select * from nation;
select * from sal_grade;

-- 1.부서코드가 노옹철 사원과 같은 소속의 직원 명단 조회

select
	emp_id,
    emp_name,
    dept_id,
    dept_title
from
	employee emp
    join
    department d
    on(emp.dept_code = d.dept_id)
where
	d.dept_title = ( select
						d2.dept_title
					from
						employee emp2
						join
						department d2
						on(emp2.dept_code = d2.dept_id)
					where emp2.emp_name = '노옹철' );
					

-- 2.전 직원의 평균 급여보다 많은 급여를 받고 있는 직원의
-- 사번, 이름, 직급코드, 급여를 조회하세요
select
	avg(salary)
 from
	employee;


select
	emp1.emp_id,
    emp1.emp_name,
    emp1.job_code,
    emp1.salary
from
	employee emp1
where
	emp1.salary >= ( select
						avg(emp2.salary)
					from
						employee emp2);
                        
					
                    
-- 3.노옹철 사원의 급여보다 많이 받는 직원의
-- 사번, 이름, 부서, 직급, 급여를 조회하세요
select
	emp.emp_id,
    emp.emp_name,
    d.dept_title,
    j.job_name,
    emp.salary
from
	employee emp
    join
    job j
    on ( emp.job_code = j.job_code)
    join 
    department d 
    on (emp.dept_code = d.dept_id)
where
	emp.salary > (select
						emp2.salary
				  from
						employee emp2
				  where
						emp2.emp_name = '노옹철');


-- 4.가장 적은 급여를 받는 직원의
-- 사번, 이름, 직급, 부서, 급여, 입사일을 조회하세요 (MIN)

-- 서브쿼리는 SELECT, FROM, WHERE, HAVING, ORDER BY절에도 사용할 수 있다.

					
    
    






















