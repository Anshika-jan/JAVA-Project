# Java MVC Calculator

A desktop calculator application built in Java Swing demonstrating the **Model-View-Controller (MVC)** architectural design pattern.

## 🎯 Architecture

- **Model (`CalculatorModel.java`)**: Encapsulates arithmetic calculations (addition, subtraction, multiplication, division with divide-by-zero check).
- **View (`CalculatorView.java`)**: Constructs the graphical user interface using Java Swing (`JFrame`, `JTextField`, `JButton`, `JLabel`).
- **Controller (`CalculatorController.java`)**: Bridges Model and View. Implements `ActionListener` to capture button click events, invokes model arithmetic, and updates UI result fields.
- **Main (`Main.java`)**: Application entry point that instantiates and connects View, Model, and Controller.

## ▶️ Compilation & Execution

Compile all source files:
```bash
javac *.java
```

Run the application:
```bash
java Main
```
