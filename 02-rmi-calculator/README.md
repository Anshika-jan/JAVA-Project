# Java RMI Calculator

A distributed Java Remote Method Invocation (RMI) application demonstrating client-server interaction via remote objects.

## 🎯 Architecture & Components

- **Remote Interface (`Calculator.java`)**: Defines remote contract extending `java.rmi.Remote` with `RemoteException`.
- **Implementation (`CalculatorImplement.java`)**: Extends `UnicastRemoteObject` and implements the remote addition and subtraction operations.
- **Server (`Server.java`)**: Instantiates the remote object and registers it with the RMI registry using `Naming.rebind("rmi://localhost/Calculator", obj)`.
- **Client (`Client.java`)**: Looks up the remote object using `Naming.lookup("rmi://localhost/Calculator")` and invokes remote methods transparently.

## ▶️ Compilation & Execution

1. **Compile all Java files:**
   ```bash
   javac *.java
   ```

2. **Start the Server:**
   ```bash
   java Server
   ```
   *(Ensure RMI registry is running if required by your JDK version, or the server will bind to the default registry)*

3. **Run the Client in a separate terminal:**
   ```bash
   java Client
   ```
