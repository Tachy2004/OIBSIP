#!/bin/bash

#Reset UFW to a clean state
sudo ufw --force reset

#Default policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

#Allow SSH (port 22)
sudo ufw allow ssh

#Deny HTTP (port 88)
sudo ufw deny http

#Enable UFW
sudo ufw --force enable

#Show status
sudo ufw status verbose

