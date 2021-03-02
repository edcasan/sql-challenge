Researching employees of the corporation from the 1980s and 1990s, from six CSV files, designing the tables to hold data in the CSVs, import the CSVs into a SQL database, and perform the next:

Data Modeling
Inspected the CSVs and sketch out an ERD of the tables. 

Data Engineering
Using the information you have to create a table schema for each of the six CSV files.
Import each CSV file into the corresponding SQL table.

Data Analysis
Once complete database, done the following:

- List the following details of each employee: employee number, last name, first name, gender, and salary,
- List employees who were hired in 1986,
- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates,
- List the department of each employee with the following information: employee number, last name, first name, and department name,
- List all employees whose first name is "Hercules" and last names begin with "B.",
- List all employees in the Sales department, including their employee number, last name, first name, and department name,
- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name,
- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Bonus 

- Import the SQL database into Pandas,
- from sqlalchemy import create_engine,
- engine = create_engine('postgresql://localhost:5432/<your_db_name>')
connection = engine.connect()
- Created a histogram to visualize the most common salary ranges for employees,
- Created a bar chart of average salary by title,
- Created an image file of your ERD,
- Created a .sql file of your table schemata,
- Created a .sql file of your queries.

![image](https://user-images.githubusercontent.com/63757160/109590916-61f37c80-7ad2-11eb-8df0-a5157eec9bf5.png)

![image](https://user-images.githubusercontent.com/63757160/109590763-2bb5fd00-7ad2-11eb-82ec-8a06bad0e3cb.png)

![image](https://user-images.githubusercontent.com/63757160/109590831-45574480-7ad2-11eb-995c-469840003cac.png)

![image](https://user-images.githubusercontent.com/63757160/109591038-759ee300-7ad2-11eb-97ff-a03ab8e9ad41.png)







