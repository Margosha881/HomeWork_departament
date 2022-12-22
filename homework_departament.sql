CREATE TABLE departament
(
	departament_ID int PRIMARY KEY,
	departament_name varchar (60) UNIQUE NOT NULL
);

CREATE TABLE employee
(
	employee_ID int PRIMARY KEY,
	name_surname varchar(60) NOT NULL,
	fk_dertament_ID int REFERENCES departament(departament_ID) NOT NULL,
	fk_manager_ID int REFERENCES employee(employee_ID)
)