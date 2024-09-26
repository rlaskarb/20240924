use employee;
-- 1 번
-- EMPLOYEE 테이블에서 직원들의 주민번호를 조회하여
-- 사원명, 생년, 생월, 생일을 각각 분리하여 조회
-- 단, 컬럼의 별칭은 사원명, 생년, 생월, 생일로 한다.
select * from employee;
select * from job;
select * from location;
select * from nation;
select * from sal_grade;

select
	emp_name as '사원명' ,
    substring(emp_no ,1,2) as '생년',
    substring(emp_no ,3,2) as '생월',
    substring(emp_no ,5,2) as '생일'
from
	employee ;

-- 2번
-- 날짜 데이터에서 사용할 수 있다.
-- 직원들의 입사일에도 입사년도, 입사월, 입사날짜를 분리 조회

select
	emp_id as 번호,
    emp_name as 이름,
    date_format(hire_date, '%Y') as 입사년도,
    date_format(hire_date, '%m') as 입사월,
    date_format(hire_date, '%d') as 입사날짜
from
	employee;

-- 3번
-- WHERE 절에서 함수 사용도 가능하다.
-- 여직원들의 모든 컬럼 정보를 조회

select
	*
from
	employee
where
	your_function_here;

	
    