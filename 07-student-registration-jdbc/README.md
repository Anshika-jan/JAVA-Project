# Student Registration System using JDBC

A desktop Java Swing application connected to MySQL via JDBC (`java.sql`) to store student registration data.

## 🎯 Features & Concepts

- **GUI Interface:** Built using Java Swing (`JFrame`, `JTextField`, `JRadioButton`, `JCheckBox`, `JButton`).
- **Input Validation:** Validates required fields (Name, Roll Number, Branch) and terms agreement.
- **Database Connectivity:** Uses JDBC `DriverManager` and MySQL Connector/J driver.
- **SQL Operations:** Secure parameter-binding using `PreparedStatement` to prevent SQL injection.

## 🛠️ Requirements

- JDK 17 or higher
- MySQL Database Server (running on `localhost:3306`)
- MySQL Connector/J JDBC Driver (`lib/mysql-connector-j-26.7.0.jar`, included)

## 🗄️ Database Setup

Create the database and table using MySQL:

```sql
CREATE DATABASE IF NOT EXISTS student_db;
USE student_db;

CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    roll_no VARCHAR(50) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    branch VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```
*(Or execute `schema.sql`)*

> **Note:** Update the database password in `src/StudentRegistration.java` to match your local MySQL configuration:
> ```java
> con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_db", "root", "YOUR_PASSWORD");
> ```

## ▶️ Compilation & Execution

### Command Line:
```bash
# Compile
javac -cp ".;lib/mysql-connector-j-26.7.0.jar" -d bin src/StudentRegistration.java

# Run
java -cp "bin;lib/mysql-connector-j-26.7.0.jar" src.StudentRegistration
```

### In VS Code:
The included `.vscode/settings.json` automatically registers the source folder `src` and the JDBC driver in `lib/`. Simply open this folder in VS Code and click **Run**.
