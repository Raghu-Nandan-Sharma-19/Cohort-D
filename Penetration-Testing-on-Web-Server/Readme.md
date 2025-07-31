# 🔐 Penetration Testing on Web Server

## 🧠 Project Summary

This project aims to simulate a professional penetration test on a company's web server to evaluate its security posture and identify potential vulnerabilities. The objective is to secure the website and employees from cyber threats, including social engineering attacks. The target sites for testing are:

- http://testphp.vulnweb.com  
- https://certifiedhacker.com

---

## 🎯 Project Objectives

1. Perform **Footprinting and Reconnaissance**
2. Scan the web server for **vulnerabilities**
3. Attempt **exploitation** based on found services
4. Test for **database vulnerabilities**
5. Document findings and provide **recommendations**

---

## 🔍 Footprinting and Reconnaissance

Information gathered during reconnaissance:

- Company Name, Address, CEO/Director
- IP Address & Server Location
- Operating System & Web Server Technology
- Built-in technology (CMS, Frameworks)
- Domain Registrar and WHOIS Info
- Open Ports and Firewall presence
- Email addresses and Social Media profiles of employees
- Directory listing status
- Files like `robots.txt`, `sitemap.xml`

> Tools Used: `whois`, `nslookup`, `recon-ng`, `nmap`, `whatweb`, `wappalyzer`, `theHarvester`, `Maltego`, `Google Dorking`, `Netcraft`, `Shodan`

---

## 🔦 Vulnerability Scanning

Performed vulnerability scanning using:

- `Nikto`
- `Nmap` with vulnerability scripts
- `OpenVAS`
- `WPScan` (if CMS detected)

Reported:
- Outdated software
- XSS
- SQLi
- Sensitive files
- Misconfigured headers

---

## ⚔️ Exploitation

Attempted to exploit identified services:

- FTP brute-force
- Admin panel access
- Login credential guessing
- Directory traversal

> Tools: `hydra`, `burpsuite`, `dirb`, `sqlmap`

---

## 💽 Database Access

Tested for SQL Injection and attempted to access backend DB:

- Manual payloads
- Automated testing with `sqlmap`

Reported: table names, possible credentials, data leaks.

---

## 💡 Key Takeaways

- Penetration Testing is crucial for identifying vulnerabilities before attackers do.
- Footprinting helps you gather maximum information without touching the target.
- Use of automated and manual techniques gives deeper insights.
- Social engineering is still one of the most exploited techniques.
