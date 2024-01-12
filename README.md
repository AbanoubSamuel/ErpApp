# ErpApp - OrderKing

### Reference Documentation

# Employee Management System
## Overview

This project is an Employee Management System designed to store information about employees, positions, projects, and salary grades. It is implemented using PostgreSQL as the database management system.

## 1- Java Programming Task

- The task is implemented in Spring Boot app

## Installation instructions
- Clone the project with ```git clone git@github.com:AbanoubSamuel/ErpApp.git``` command in a terminal.
- Execute this command to install dependencies ```mvn clean install```
- Run ```mvn spring-boot:run``` to install dependencies and run the project. 



# 2- SQL Query Task
## Table Structure
### SQL queries are inside SQL folder in 3 scripts.

## Please note it is implemented in PostgreSQL RDMBS syntax

## Overview
This project is an Employee Management System designed to store information about employees, positions, projects, and salary grades. It is implemented using PostgreSQL as the database management system.

- **Employees**: Stores information about employees, including their name, position, age, and salary.

- **Positions**: Contains details about different job positions.

- **Projects**: Records information about projects, such as project name and budget.

- **Employee_Projects**: Represents the many-to-many relationship between employees and projects.

- **SalaryGrades**: Provides salary grade information.

## SQL Queries

The project includes SQL queries for performing various tasks such as displaying employees involved in at least two projects, calculating the average salary rate per position, updating salaries based on project budgets, and deleting employees older than 40 not involved in any projects.

## Usage

1. **Setup Database**: Execute the SQL queries provided in the [create_tables.sql](create_tables.sql) file to set up the necessary tables.

2. **Insert Dummy Data**: Use the [insert_dummy_data.sql](insert_dummy_data.sql) file to insert sample data into the tables.

3. **Perform Queries**: Explore the SQL queries in [queries.sql](queries.sql) for analyzing and manipulating the data.

## Transactions

For operations involving multiple changes to the database, transactions are used to maintain data integrity.

