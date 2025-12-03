# 🎓 University Management Database

A **Relational Database Project** implemented in SQL. This script creates a system to manage university data, specifically focusing on **Students** and **Courses**. It demonstrates core SQL concepts including Data Definition Language (DDL) for creating and modifying structures, and Data Manipulation Language (DML) for populating data.


## 🚀 Features

* **Database Design:** Creates a dedicated database named `University`.
* **Table Management:** Defines schemas for `Student` and `Courses` with appropriate constraints (`PRIMARY KEY`, `NOT NULL`, `UNIQUE`).
* **Data Population:** Includes sample data records representing students from various cities in Pakistan and standard university courses.
* **Schema Evolution:** Demonstrates the use of `ALTER TABLE` to modify the database structure after creation (adding/renaming columns, changing data types, and deleting columns).

## 🛠️ Database Schema

### 1. Student Table
Stores personal and academic registration details of students.

| Column | Type | Constraints | Notes |
| :--- | :--- | :--- | :--- |
| **Student_ID** | `INT` | `PRIMARY KEY` | Unique Identifier |
| **First_Name** | `VARCHAR(30)` | `NOT NULL` | |
| **Last_Name** | `VARCHAR(30)` | | |
| **Address** | `VARCHAR(50)` | | City/Location |
| **Phone_No** | `VARCHAR(15)` | `UNIQUE` | Contact Number |
| **DOB** | `DATE` | | Date of Birth |
| **Gender** | `CHAR(1)` | | 'M' or 'F' |
| **Entrance_Date** | `DATE` | | *Renamed from Enrollment_date* |
| **Email** | `VARCHAR(30)` | | *Added via ALTER command* |

### 2. Courses Table
Stores information about the subjects offered.

| Column | Type | Constraints | Notes |
| :--- | :--- | :--- | :--- |
| **Course_ID** | `INT` | `PRIMARY KEY` | Unique Course Code |
| **Course_Name** | `VARCHAR(30)` | `NOT NULL` | |
| **Instructor_Name** | `VARCHAR(30)` | `NOT NULL` | *Modified from CHAR to VARCHAR* |
| **Semester** | `INT` | `NOT NULL` | |
| **Location** | `VARCHAR(20)` | `NOT NULL` | Class Room |
| ~~Credits~~ | `INT` | | *Dropped via ALTER command* |

## 🔄 Schema Modifications
The script performs several `ALTER` operations to demonstrate schema evolution:

1.  **Add Column:** Adds an `Email` field to the `Student` table.
2.  **Rename Column:** Changes `Enrollment_date` to `Entrance_Date` in the `Student` table.
3.  **Modify Data Type:** Changes `Instructor_Name` from fixed length `CHAR(30)` to variable length `VARCHAR(30)` for optimization.
4.  **Drop Column:** Removes the `Credits` column from the `Courses` table.

## 💻 How to Run

### 1. Prerequisites
Ensure you have an SQL Server installed (e.g., MySQL, SQL Server, or MariaDB).

### 2. Execution
Run the script in your SQL command line or interface (like MySQL Workbench):

```sql
source university.sql
```

## 📝 Example Data
#### Student Record:
* **ID:** 2020201
* **Name:** Waris Hassan
* **City:** Faisalabad
* **Date of Birth:** 2000-09-07

#### Course Record:
* **ID:** 34532
* **Name:** Database
* **Instructor:** Ali
* **Location:** Room-04

## ⚠️ Requirements
* **SQL Database Server** (MySQL recommended).
