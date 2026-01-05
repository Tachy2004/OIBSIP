# Task 1 – Basic Network Scanning with Nmap

## Objective
Perform a basic network scan using Nmap to identify open ports and running services on a target system.

## Environment
- Attacker Machine: Kali Linux (VirtualBox VM)
- Target Machine: Ubuntu Linux (VirtualBox VM)
- Network Mode: NAT Network

## Tools Used
- Nmap

## Installation and Verification

### Installing Nmap on Kali Linux
Nmap is pre-installed on Kali Linux. Its presence was verified using:
nmap --version

### Installing Nmap on Ubuntu (if required)
On Ubuntu, Nmap can be installed using:
sudo apt update
sudo apt install nmap -y

Verification:
nmap --version

## Network Configuration Verification
The target machine IP address was confirmed using:
ip a

Connectivity between Kali and Ubuntu was verified using:
ping 10.0.2.15

## Scan Commands Used

Basic service scan:
sudo nmap -sV 10.0.2.15

Aggressive scan with OS and service detection:
sudo nmap -sV -A 10.0.2.15 -oN nmap_scan_results.txt

## Scan Results and Analysis

### Port 22/tcp – SSH
- Service: OpenSSH
- Significance: Allows secure remote administration. If exposed publicly, it is a common brute-force target.

### Port 80/tcp – HTTP
- Service: Apache HTTP Server
- Significance: Hosts web services. Misconfiguration can lead to vulnerabilities such as directory traversal or web-based attacks.

## Evidence
Screenshots demonstrating the scan execution and results are stored in the screenshots directory.

## Conclusion
This task demonstrates basic reconnaissance using Nmap to identify open ports and active services on a Linux target system.
