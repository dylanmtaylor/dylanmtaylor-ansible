# Ansible Playbook for Deploying My Website

## About this project

This project is an Ansible playbook that deploys and configures a complete and fully-functional copy of my website, dylanmtaylor.com. This was initially developed in order to teach myself how to use Ansible, but now it is used in order to provision my website. I'm licensing this under the MIT license, so, should you find this useful, feel free to adapt it to your needs if you would like.

### How to run this:

First, make sure that there are no errant entries in ~/.ssh/known_hosts (or set StrictHostKeyChecking to no)

Install the latest ansible package on your system

Setup a \[dylanmtaylor-server\] section in /etc/ansible/hosts with the IP addresses of the system(s) you are deploying to

Run the command ansible-playbook playbook.yml

Report any issues here, and I'll consider fixing them

X5F2iwXkJpt1Qf77Z7 198.23.173.50
