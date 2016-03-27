# Ansible Playbook for Deploying My Website

## About this project

I'm trying to learn ansible, so I decided it would be fun to develop an ansible playbook that provisions a functional copy of my site, dylanmtaylor.com. This isn't currently how the site is deployed, but I think it would be nice to have my site provisioned with this in the future. I'm licensing this under the MIT license, feel free to adapt it to your needs if you would like.

### How to run this:

Make sure that there are no offending entries in ~/.ssh/known_hosts (or set StrictHostKeyChecking to no)

ansible-playbook -vvvv playbook.yml
