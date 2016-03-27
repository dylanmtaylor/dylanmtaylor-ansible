#!/bin/bash
#Author: Dylan M. Taylor; github: dylanmtaylor
#This script is a quick and dirty way to remove bad default sshd settings when a public key is present on the server

if grep -q ssh-rsa /root/.ssh/authorized_keys; then
        ## Modify sshd configuration

        # Delete all lines containing values already
        sed -i '/PasswordAuthentication/d' /etc/ssh/sshd_config
        sed -i '/PermitRootLogin/d' /etc/ssh/sshd_config
        sed -i '/RSAAuthentication/d' /etc/ssh/sshd_config
        sed -i '/RhostsRSAAuthentication/d' /etc/ssh/sshd_config
        sed -i '/PubkeyAuthentication/d' /etc/ssh/sshd_config
        sed -i '/ChallengeResponseAuthentication/d' /etc/ssh/sshd_config

        # Append new values to the end of the file
        echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
        echo "PasswordAuthentication no" >> /etc/ssh/sshd_config
        echo "PubkeyAuthentication yes" >> /etc/ssh/sshd_config
        echo "RSAAuthentication yes" >> /etc/ssh/sshd_config
        echo "RhostsRSAAuthentication yes" >> /etc/ssh/sshd_config
        echo "ChallengeResponseAuthentication no" >> /etc/ssh/sshd_config

        ## Lock password for the root user account
        passwd -l root
else
        echo "There are no root SSH keys installed, we will not disable root login because it will prevent access."
        echo "No changes were made to the sshd_config file. Please run this script again after adding a root SSH key."
        echo "To manually disable root login with a password, run passwd -l root as the root user."
fi
