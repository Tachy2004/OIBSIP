# Task 2 – Basic Firewall Configuration with UFW

## Objective
Configure a basic firewall using UFW to allow SSH traffic and deny HTTP traffic on an Ubuntu system.

## Environment
- Operating System: Ubuntu Linux
- Firewall Tool: UFW (Uncomplicated Firewall)

## Installation
UFW was installed and verified using:
sudo apt update
sudo apt install ufw -y
ufw --version

## Configuration Steps
1. Reset existing firewall rules.
2. Set default policies to deny incoming traffic and allow outgoing traffic.
3. Allowed SSH traffic on port 22.
4. Denied HTTP traffic on port 80.
5. Enabled the firewall.

## Script
The firewall configuration was automated using:
ufw_configuration.sh

## Verification
Firewall rules were verified using:
sudo ufw status verbose

The output confirmed that SSH is allowed and HTTP is denied.

## Evidence
Screenshots of the firewall status are stored in the screenshots directory.

## Conclusion
This task demonstrates basic firewall hardening using UFW to reduce the system attack surface.
