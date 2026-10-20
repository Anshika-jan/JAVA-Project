# Student Registration Web App (Jakarta Servlet + JSP)

A Maven-based web application demonstrating Java Server Pages (JSP) and Jakarta Servlet integration.

## 🎯 Features & Workflow

1. **Student Form (`src/main/webapp/student.jsp`)**: Form collects student details (`name`, `email`, `course`, `age`) and submits via HTTP POST to `/hello`.
2. **Controller (`src/main/java/com/servlet/HelloServlet.java`)**: `@WebServlet("/hello")` processes the request parameters, places them in request scope, and forwards to `result.jsp`.
3. **Result View (`src/main/webapp/result.jsp`)**: Displays registered student information using JSP Expression Language (`${name}`, `${email}`, etc.).
4. **Welcome Page (`src/main/webapp/index.jsp`)**: Welcome landing page.

## 🛠️ Tech Stack

- Java 17
- Jakarta Servlet API 6.1.0
- Jakarta Server Pages (JSP) API 3.1.0
- Maven (WAR packaging)
- Apache Tomcat 10 / 11

## ▶️ Build & Deployment

1. **Build WAR file using Maven:**
   ```bash
   mvn clean package
   ```
   *Generates `target/servlet.war`*

2. **Deploy to Apache Tomcat:**
   - Copy `target/servlet.war` into Tomcat's `webapps/` folder.
   - Start Tomcat (`startup.bat` / `startup.sh`).
   - Open in browser: `http://localhost:8080/servlet/student.jsp`
