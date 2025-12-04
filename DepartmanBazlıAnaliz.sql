SELECT
    department_id,
    COUNT(*) AS employee_count,
    SUM(salary) AS total_salary,
    MIN(salary) AS min_salary,
    MAX(salary) AS max_salary,
    ROUND(AVG(salary)) AS avg_salary
FROM hr.employees
WHERE salary IS NOT NULL AND salary > 0
GROUP BY department_id
HAVING COUNT(*) > 3
ORDER BY total_salary DESC;