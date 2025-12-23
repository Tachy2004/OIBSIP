# Task 2 -Basic Firewall Configuration with UFW

## Objective 
Configure a basic firewall using UFW to allow SSH traffic and deny HTTP traffic on an Ubuntu system

## Tools Used
-UFW ( Uncomplicated Firewall)
-Ubuntu Linux

## Configuration Steps
1. Installed UFW using the package manager
2. Reset existing firewall rules
3. Set default policies to deny incoming traffic and allow outgoing traffic
4. Allow SSH to ensure remote access
5. Denied HTTP to block web traffic
6. Enabled the firewall and verified active rules

##Script
The firewall configuration was automated using 'ufw_configuration.sh'.

## Verification
Firewall status was verified using :
```bash
sudo ufw status verbose 
