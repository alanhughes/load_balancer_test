Prerequisites:
- General: Vagrant and Virtual box are installed on your host PC
- Non-Windows-Hosts: Ansible is installed (this has not been fully tested)

Instructions:
- Clone this repo and navigate to the top level directory, containing the Vagrantfile
- Run 'vagrant up'
- Upon completion (roughly 3-5 minutes) open a browser and navigate to http://192.168.50.5:8080/

The text should display "Hi there, I'm served from application-box-<x>!", where "x" switches between '1' and '2' upon page refreshes. Kill one of the application servers (vagrant destroy node-<x>) to demonstrate round-robin nginx setup.
