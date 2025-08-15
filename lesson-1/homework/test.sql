Here’s a complete solution for **Lesson 1: Introduction to SQL Server and SSMS**, including answers for Easy, Medium, and Hard tasks.

---

## ✅ **Easy**

### **1. Definitions**

* **Data**: Raw facts or figures without context (e.g., numbers, names).
* **Database**: A structured collection of data stored electronically, allowing efficient access and management.
* **Relational Database**: A database that stores data in tables with rows and columns. Tables are related to each other using keys (e.g., primary, foreign keys).
* **Table**: A collection of related data organized in rows and columns in a database.

---

### **2. Five Key Features of SQL Server**

1. **High Availability** with features like Always On.
2. **Security** through authentication modes, encryption, roles, and permissions.
3. **Integration with Tools** like SSMS, Visual Studio.
4. **Advanced Data Types and Functions** (e.g., JSON, XML, spatial).
5. **Backup and Recovery** mechanisms.

---

### **3. Authentication Modes in SQL Server**

1. **Windows Authentication** – uses Windows user accounts.
2. **SQL Server Authentication** – uses SQL-specific username and password.

---

## ✅ **Medium**

### **4. Create a New Database (SchoolDB)**

In **SQL Server Management Studio (SSMS)**:

```sql
CREATE DATABASE SchoolDB;
```

---

### **5. Create the Students Table**

```sql
USE SchoolDB;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);
```

---

### **6. Differences: SQL Server vs SSMS vs SQL**

| Term           | Description                                                                                                      |
| -------------- | ---------------------------------------------------------------------------------------------------------------- |
| **SQL Server** | A **relational database management system (RDBMS)** developed by Microsoft. It stores and manages data.          |
| **SSMS**       | **SQL Server Management Studio** is a **GUI tool** used to connect to and manage SQL Server databases.           |
| **SQL**        | **Structured Query Language**, a **language used to interact** with relational databases (e.g., SELECT, INSERT). |

---

## ✅ **Hard**

### **7. SQL Command Types with Examples**

| Type    | Full Form                    | Purpose                        | Example                                        |
| ------- | ---------------------------- | ------------------------------ | ---------------------------------------------- |
| **DQL** | Data Query Language          | Retrieve data                  | `SELECT * FROM Students;`                      |
| **DML** | Data Manipulation Language   | Insert, update, delete data    | `INSERT INTO Students VALUES (1, 'John', 20);` |
| **DDL** | Data Definition Language     | Define structure of DB objects | `CREATE TABLE Students (...);`                 |
| **DCL** | Data Control Language        | Grant/revoke permissions       | `GRANT SELECT ON Students TO user;`            |
| **TCL** | Transaction Control Language | Manage transactions            | `BEGIN TRANSACTION; COMMIT; ROLLBACK;`         |

---

### **8. Insert Three Records**

```sql
INSERT INTO Students (StudentID, Name, Age)
VALUES 
(1, 'Alice', 21),
(2, 'Bob', 22),
(3, 'Charlie', 20);
```

---

### **9. Restore `AdventureWorksDW2022.bak` File**

#### **Steps to Restore the Backup in SSMS:**

1. **Download** the `.bak` file from:
   [https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2022.bak](https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2022.bak)

2. **Move the File** to the default SQL Server backup directory (e.g., `C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\`).

3. **Open SSMS** and connect to the SQL Server instance.

4. Right-click **Databases > Restore Database...**

5. Choose **Device**, click the **...** button, and select the `.bak` file.

6. Select **AdventureWorksDW2022** as the destination database name.

7. Go to **Options** tab:

   * Check **Relocate all files...** if needed.
   * Ensure **Restore with Recovery** is selected.

8. Click **OK** to start restoring.

---

Let me know if you'd like screenshots or code-only summaries.
