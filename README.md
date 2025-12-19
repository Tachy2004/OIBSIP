# Task 1: Basic Network Scanning with Nmap

## Objective
Perform a network scan to identify open ports and running services on a target system using Nmap.

## Lab Setup
- Attacker Machine: Kali Linux (VirtualBox)
- Target Machine: Ubuntu Server (VirtualBox)
- Network Configuration: VirtualBox NAT Network
- Target IP Address: <10.0.2.15>

## Tools Used
- Nmap 7.95
- OpenSSH Server
- Apache2 Web Server

## Scan Commands Used
```bash
nmap -sV <10.0.2.15>
sudo nmap -sV -A <10.0.2.15> -oN nmap_scan_results.txt
