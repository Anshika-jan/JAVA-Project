# Advanced Java Practical & Capstone Projects Repository

A comprehensive collection of core and advanced Java lab projects covering GUI development with MVC, distributed systems with RMI, network socket programming, enterprise web applications with Jakarta Servlets and JSP, database connectivity with JDBC, and a full-stack E-Commerce Capstone Project.

---

## 📂 Repository Structure

```
JAVA-Project/
├── 01-calculator-mvc/               # MVC-based Swing Calculator
│   ├── CalculatorModel.java
│   ├── CalculatorView.java
│   ├── CalculatorController.java
│   ├── Main.java
│   └── README.md
│
├── 02-rmi-calculator/               # Remote Method Invocation (RMI)
│   ├── Calculator.java              # Remote Interface
│   ├── CalculatorImplement.java     # Remote Object Implementation
│   ├── Server.java                  # RMI Registry Server
│   ├── Client.java                  # RMI Client
│   └── README.md
│
├── 03-socket-programming/           # TCP Client-Server Networking
│   ├── Server.java                  # ServerSocket on port 5000
│   ├── Client.java                  # Socket client
│   └── README.md
│
├── 04-servlet-demo/                 # Jakarta Servlet 6.1 & Tomcat 11
│   ├── pom.xml
│   ├── src/main/java/com/servlet/   # Servlets, Filters, Listeners
│   └── src/main/webapp/             # index.html
│
├── 05-jsp-servlet-student/          # Jakarta JSP + Servlet Application
│   ├── pom.xml
│   ├── src/main/java/com/servlet/   # HelloServlet
│   └── src/main/webapp/             # student.jsp, result.jsp, web.xml
│
├── 06-student-registration-swing/   # Java Swing Registration Form
│   ├── StudentRegistration.java     # Standalone Swing GUI with validations
│   └── README.md
│
├── 07-student-registration-jdbc/    # Swing GUI + MySQL JDBC Connectivity
│   ├── src/StudentRegistration.java # Form with PreparedStatement CRUD
│   ├── lib/mysql-connector-j-*.jar  # MySQL JDBC Driver
│   ├── schema.sql                   # MySQL Database Schema
│   ├── .vscode/settings.json        # VS Code Java classpath configuration
│   └── README.md
│
└── 08-java-project-website/         # ShopSphere - Advanced Java E-Commerce Platform
    ├── web/                         # Jakarta Servlet 6.1, JSP, JSTL, DAOs, Services
    ├── swing-admin/                 # Swing MVC Desktop Admin Application
    ├── network/                     # TCP Socket Inventory Server/Client
    ├── rmi/                         # Distributed Java RMI Inventory Service
    ├── database/                    # shopsphere.sql (MySQL schema)
    ├── lib/                         # Embedded Tomcat & Derby libraries
    ├── public/                      # Static web templates & assets
    ├── pom.xml                      # Maven configuration
    └── README.md                    # Detailed capstone documentation

├── apache-tomcat-11.0.25/           # Apache Tomcat 11.0.25 Server Distribution
    ├── bin/                         # Startup and shutdown scripts (catalina.bat, etc.)
    ├── conf/                        # Server configuration (server.xml, web.xml)
    ├── lib/                         # Tomcat internal runtime libraries
    └── webapps/                     # Web application deployment directory
```

---

## 🚀 Projects Overview

| # | Project Name | Key Technologies | Description |
|---|---|---|---|
| **01** | [Calculator (MVC)](./01-calculator-mvc/) | Java Swing, MVC Pattern | Desktop calculator separating UI, business logic, and event handling. |
| **02** | [RMI Calculator](./02-rmi-calculator/) | Java RMI, Remote Interface | Distributed system invoking remote arithmetic methods across JVMs. |
| **03** | [Socket Programming](./03-socket-programming/) | `java.net.Socket`, TCP/IP | Client-server communication over stream sockets on port 5000. |
| **04** | [Servlet Demo](./04-servlet-demo/) | Jakarta Servlet 6.1, Tomcat | Comprehensive demo of Servlet Lifecycle, Filters, Listeners, and Session cookies. |
| **05** | [JSP & Servlet App](./05-jsp-servlet-student/) | JSP 3.1, Expression Language | Dynamic web application collecting student info and forwarding to JSP view. |
| **06** | [Student Registration (Swing)](./06-student-registration-swing/) | Java Swing, Form Validation | Desktop GUI form validating user input with `JOptionPane` dialogs. |
| **07** | [Student Registration (JDBC)](./07-student-registration-jdbc/) | JDBC, MySQL, `PreparedStatement` | Desktop database application saving student records into MySQL. |
| **08** | [Java Project Website (ShopSphere)](./08-java-project-website/) | Jakarta EE, JSP, Swing, Sockets, RMI, JDBC | Enterprise E-Commerce management system combining web, desktop, and distributed services. |

---

## 🛠️ Prerequisites

- **Java Development Kit (JDK):** Version 17 or higher
- **Build Tool:** Apache Maven 3.8+
- **Servlet Container:** Apache Tomcat 10.1 or 11.0 (Jakarta EE 10/11)
- **Database Server:** MySQL Server 8.0+ / Embedded Apache Derby
- **IDE:** Visual Studio Code, IntelliJ IDEA, or Eclipse

---

## 📄 License
This repository is maintained for educational and academic coursework purposes.
