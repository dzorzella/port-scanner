### 🔐 1. Port Scanner

**Objective:**
- Write a script that accepts an IP address or hostname and a port.
- Check if the port is open using `/dev/tcp` or an equivalent command.
- Display a message indicating whether the port is open or closed.

**✅ Success Criteria:**
- The script accepts two arguments: host and port.
- Returns a clear message if the port is open or closed.
- Handles errors (e.g., unreachable host).

**💡 Extra Challenge:**
- Add the ability to scan a range of ports (e.g., from 20 to 80).
- Save the results in a log file with a timestamp.
