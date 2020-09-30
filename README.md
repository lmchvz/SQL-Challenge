## SQL Analysis - Employee Database
The objective of this research project is to analyze the corporation’s employees from the 1980s and 1990s. 

The employee data is saved in [6 separate CSV files]( EmployeeSQL/data)

After reviewing the data, first I used the **Data Modeling** Tool QuickDBD to create a [Entity Relationship Diagram](EmployeeSQL/01_ERD.png) / [ERD text](EmployeeSQL/01_ERD.txt) to help plan my SQL Tables. 

I used the ERD and **Data Engineering** to create a [table schema](EmployeeSQL/02_table_schemata.sql) for each of the six CSV files and imported each CSV file into the corresponding SQL table. 

I then preformed **Data Analysis** by creating these [queries](EmployeeSQL/03_queries.sql):
•	Employees who were hired in 1986.
•	The manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
•	The department of each employee with the following information: employee number, last name, first name, and department name.
•	All employees whose first name is "Hercules" and last names begin with "B."
•	All employees in the Sales department, including their employee number, last name, first name, and department name.
•	All employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
•	In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.


*Bonus*
After examining the data, there is suspicion that the dataset is fake. In the file [Bonus.ipynb]( EmployeeSQL/ 04_Bonus.ipynb)
the following steps were taken to generate a visualization of the data to confirm hunch:
•	Import the SQL database into Pandas.
•	from sqlalchemy import create_engine
•	Create a histogram to visualize the most common salary ranges for employees.
•	Create a bar chart of average salary by title.
