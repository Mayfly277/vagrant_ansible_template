# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.define "myvm" do |myvm|
    # Config
    myvm.vm.hostname = "myvm.template.hostname"

    # Create a private network, which allows host-only access to the machine
    # using a specific IP
    myvm.vm.network "private_network", ip: "192.168.10.10"

    # Providing - virtualbox - debian 9
    myvm.vm.box = "debian/stretch64"

    # Add sync folder - uncomment to mount the folder src/var/www/html/ in virtualbox share folder
    # myvm.vm.synced_folder "src/var/www/html/", "/var/www/html"

    myvm.vm.provider "virtualbox" do |vb|
      # Display the VirtualBox GUI when booting the machine
      vb.gui = false
      vb.name = "myvm.template"
      vb.cpus = "4"
      vb.memory = "4096"
    end

    # Provisioning - ansible
    myvm.vm.provision "ansible" do |ansible|
      # ansible.verbose = "v"
      ansible.playbook = "playbook.yml"
    end
  
  end
end
