# Java Socket Programming (TCP Client-Server)

A fundamental client-server network communication application built with standard `java.net` TCP sockets.

## 🎯 Concepts Covered

- `ServerSocket` listening for incoming connections on port `5000`
- `Socket` initiating connection to `localhost:5000`
- Bidirectional stream communication using `BufferedReader` and `PrintWriter`
- Proper resource teardown and connection closure

## ▶️ Compilation & Execution

1. **Compile both Java files:**
   ```bash
   javac Server.java Client.java
   ```

2. **Start the Server first:**
   ```bash
   java Server
   ```
   *Expected output: `Server started... Waiting for client...`*

3. **In a separate terminal, run the Client:**
   ```bash
   java Client
   ```
   *The client sends "Hello Server" and prints the server's reply "Hello Client".*
