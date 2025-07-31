# 🛰️ Network Scanning and Enumeration Dashboard (CLI-Based)

A mini-project developed using **Kali Linux** and **pure Bash scripting** that scans the local network, identifies active devices, detects open ports, determines OS information, and recommends basic defense measures — all from the command line.

---

## 📌 Project Objective

- Identify all live hosts in a local network
- Perform OS detection and open port scanning
- Log results in a clean, readable dashboard format
- Recommend basic defense techniques for hardening the network
- Completely implemented using **Bash**, without Python or GUI

---

## 🛠️ Tools and Technologies Used

| Tool           | Purpose                             |
|----------------|-------------------------------------|
| `netdiscover`  | Discover active hosts on the network |
| `nmap`         | Port scanning, service detection, OS fingerprinting |
| `bash`         | Scripting and automation logic      |
| Kali Linux     | Operating system (used in VirtualBox) |

---

## ⚙️ How It Works
1. **Note**
    In script make sure you change ip address according to your device ip address to successfully execute the script

2. **Live Host Discovery**:  
   Uses `netdiscover` to identify active IP addresses on the network.

3. **Port & OS Scanning**:  
   For each discovered IP, `nmap -A` is used to gather:
   - Open ports and services
   - Operating system details

4. **Result Logging**:
   - All raw `nmap` results are saved in `results_<ip>.txt`
   - A human-readable `dashboard.txt` summarizes each host
   - `defense.txt` provides hardening suggestions

---

## ▶️ How to Use

> ⚠️ Requires root privileges. Run using `sudo`.

1. **Make the script executable** (optional step):
   ```bash
   chmod +x scan.sh

2. **Run the script**
   ```bash
   sudo ./scan.sh

3. **Wait for scan to complete**

4. **View the results**
   - dashboard.txt
   - results_<ip>.txt
   - defense.txt

5. **Open files using**
   - cat dashboard.txt
   - cat results_192.168.x.x.txt
   - cat defense.txt