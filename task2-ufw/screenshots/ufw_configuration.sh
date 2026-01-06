#!/bin/bash

# Reset UFW to default state
sudo ufw reset -y

# Default policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow SSH
sudo ufw allow 22/tcp

# Deny HTTP
sudo ufw deny 80/tcp

# Enable firewall
sudo ufw enable

# Show status
sudo ufw status verbose
