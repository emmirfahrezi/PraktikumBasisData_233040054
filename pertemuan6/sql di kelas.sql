use pertemuan6

create table Departments (
	DepartmenstID INT IDENTITY (1,1) PRIMARY KEY,
	DepartementName VARCHAR (50) NOT NULL
)

create table Projects(
	ProductID INT IDENTITY(1,1) PRIMARY KEY,
	projectName VARCHAR(50) NOT NULL,
	DepartmentsID INT 
	FOREIGN KEY (DepartmentsID) REFERENCES Departments (DepartmenstID )
	ON UPDATE  CASCADE ON DELETE CASCADE
)

create table Employee(
	EmployeeID INT IDENTITY(1,1 ) PRIMARY KEY,
	Name VARCHAR (50) NOT NULL,
	DepartmentsID INT 
	FOREIGN KEY (DepartmentsID) REFERENCES Departments (DepartmenstID)
	ON UPDATE  CASCADE ON DELETE CASCADE,
	ManagerID INT 
	FOREIGN KEY (ManagerID)  REFERENCES Employee (EmployeeID)

)

create table Salaries (
	EmployeeID INT
	FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID)
	ON UPDATE  CASCADE ON DELETE CASCADE,
	Salaries DECIMAL(10,2) NOT NULL

) 


INSERT INTO [dbo].[Departments] (DepartementName)
VALUES ('human resources'),
		('finance'),
		('IT')

INSERT INTO [dbo].[Employee] ([Name], [DepartmentsID], [ManagerID])
VALUES
		('Faiz', 1, NULL), --manager HR
		('Yono', 1, 1 ),
		('Desi', 1, 1 ),
		('Ashana', 1, 1),
		('Amberlie', 1, 1),
		('Adena', 1, 1),
		('Amba', 2, NULL), --manager finance
		('Rusdi', 2, 2), 
		('Marjo', 2, 2),
		('Budi', 2, 2),
		('Ilham', 2, 2),
		('Deden', 2, 2),
		('Asep', 3, NULL), --manager IT
		('Udin', 3, 3),
		('Aceng', 3, 3)

		select * from [dbo].[Employee]

INSERT INTO [dbo].[Salaries] (EmployeeID, Salaries)
VALUES
		(1, 100), --manager HR
		(2, 90),
		(3, 80),
		(4, 70),
		(5, 60),
		(6, 50),
		(7, 100), --manager finance
		(8, 90), 
		(9, 80),
		(10, 70),
		(11, 60),
		(12, 50),
		(13, 100), --manager IT
		(14, 90),
		(15, 80)

		select * from [dbo].[Salaries]

		SELECT N.Name AS nama, S.Salaries AS Gaji
		FROM Employee N
		INNER JOIN Salaries S ON N.EmployeeID = S.EmployeeID;



INSERT INTO [dbo].[Projects] (projectName, DepartmentsID )
VALUES 
	('WEB mobil mobilan', 3),
	('Pixel Path', 3),
	('cyber craft', 3),
	('Net Nexus', 3),
	('Virtual Vista', 3),
	('Bizify',3),
	('Learnly',3),
	('FitHub',3),
	('Taskly',3),
	('Shopzy',3)

select * from [dbo].[Projects]







