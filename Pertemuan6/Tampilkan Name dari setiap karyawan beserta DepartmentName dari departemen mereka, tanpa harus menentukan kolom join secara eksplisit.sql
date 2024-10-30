SELECT 
    Employee.name AS EmployeeName, 
    Departments.DepartmentName AS DepartmentName
FROM 
    Employee, Departments
WHERE 
    Employee.DepartmentsID = Departments.DepartmentsID;
