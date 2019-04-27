- installing and setup of the working environment 
	- text editor of your choice, vim, atom etc.
	- install virtualbox for the creation of virtual machines
	- setup account on Github
	- install vagrant to launch the development infrastructure
	- gist for vagrant/virtualbox setup script: https://gist.github.com/simbalinux/dbd91f1a0f22c135f16bc5cb6a765edc

- enviornment layout
	- puppet master
	- 2 agent nodes (ubuntu/centos)



# Puppet 


In computing, Puppet is an open-core software configuration management tool. It runs on many Unix-like systems as well as on Microsoft Windows, and includes its own declarative language to describe system configuration..

# Requirements 

  - text editor (vim, atom etc.)
  - Virtualbox for the creation of virtual machines for this lab
  - Github account (version control)
  - Vagrant (to launch the development infrastructure)
  - Vagrant/Virtualbox setup script: https://gist.github.com/simbalinux/dbd91f1a0f22c135f16bc5cb6a765edc

Caveats:
  - EL7 you will need to reduce the memory usage when running in vagrant with < 3gbs memory (puppetmaster server)
  - you will need to comment out "secure_path" in /etc/suoders in order to run "sudo puppet * " commands 


# how to get it up and running
  - Vagrnat up (wait for all VMS to complete the installation and bootstrapping)
  - Once the servers are up go into each "agent" node and run "puppet agent --test --server puppetmaster" 
  - On puppetmaster...."sudo puppet cert sign "name of agent""
  - Go back to the agents and run: "puppet agent --test --server puppetmaster"
  - This project ships with a test module for "httpd" to be installed on the agents.
