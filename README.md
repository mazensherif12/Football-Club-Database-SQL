# ⚽ Football Club Database – SQL Server

A SQL Server database project for a Football Club system, demonstrating different **T-SQL** database operations and queries.

## 📌 Project Overview

This project contains SQL scripts for working with football club data and demonstrates:

- Stored Procedures
- Table-Valued Functions
- Data Retrieval and Filtering
- Sorting and Grouping
- Aggregate Functions
- String Functions
- SQL Joins
- Sample Data Insertion

## 🚀 Features

### Stored Procedures

The project includes:

- `All_Tables_Records` – retrieves records from the different football club related tables.
- `GetAllplayers` – retrieves all players.

### Table-Valued Function

- `GetPlayers(@ID)` – returns player information based on the specified player ID.

### SQL Queries

The script demonstrates different query operations, including:

- Filtering coaches by salary.
- Filtering players by position.
- Filtering matches by date.
- Calculating average salaries.
- Counting facilities.
- Finding maximum stadium capacity.
- Using `BETWEEN`.
- Converting names to uppercase using `UPPER()`.
- Sorting data using `ORDER BY`.
- Grouping data using `GROUP BY`.
- Using `INNER JOIN`.
- Using `FULL OUTER JOIN`.

### Sample Data

The script includes sample `INSERT` statements for entities such as:

- People
- Facilities
- Coaches
- Stadiums
- Training Centers
- Medical Centers
- Football Clubs
- Football Teams
- Medical Teams
- Trainers
- Doctors
- Nurses
- Matches
- Addresses
- Equipment
- Fans

## 🛠️ Technologies

- **Microsoft SQL Server**
- **T-SQL**
- **SQL Server Management Studio (SSMS)**

## 📂 Project Structure

```text
Football-Club-Database-SQL/
│
├── football_club_database.sql
└── README.md
```

## ▶️ How to Run

1. Open **SQL Server Management Studio (SSMS)**.
2. Open `football_club_database.sql`.
3. Select the database containing the referenced tables.
4. Execute the script or run the required sections individually.
5. Use the provided procedures and queries to retrieve and analyze the data.

## ⚠️ Note

This script references several existing tables but does **not** contain their `CREATE TABLE` statements. Therefore, the corresponding database schema must already exist before running the complete script.

## 👨‍💻 Author

**Mazen Sherif**

GitHub: `mazensherif12`