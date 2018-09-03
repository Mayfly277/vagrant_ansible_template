# VM - Challenge template project

This virtual machine is an empty project configuration for a LAMP stack.
Personnaly, i use it to test and build ctf challenges or to try some exploits.

This template is free to reuse, modify, sell, do whateever you want with it.

## Prerequistes - Install VM
 - Install vagrant
 - Install virtualbox
 - Install ansible

 - (optional) : Install vagrant plugin vbguest (if you want to use shared folders)

```bash
# This plugin will install the virtual box guest addition 
vagrant plugin install vagrant-vbguest
```
    
### Arch Install
```bash
sudo pacman -S vagrant ansible virtualbox virtualbox-host-modules-arch python-openssl
```

## Ubuntu 17.10 Install
```bash
sudo apt install vagrant virtualbox
```

* NEED ansible 2.4 min (needed by csr module for certificate generation)
```
$ sudo apt-get update
$ sudo apt-get install software-properties-common
$ sudo apt-add-repository ppa:ansible/ansible
$ sudo apt-get update
$ sudo apt-get install ansible
```

## VM
The virtual machine is mounted with this stats (you can modify it inside Vagrantfile, before vm creation)
- CPU : 4
- RAM : 4096 Mo
- Box : debian/stretch64 (debian 9)
- Providing : Vitualbox
- Provisionning : Ansible

## Improvements
  - separate task into modules and subtasks
  - use ansible-vault for passwords
  - write tests
  - review and test arch and ubuntu requirements install

## Usefull Commands

- Launch (do provisioning on first run)
  - `vagrant up`

- Stop VM
  - `vagrant halt`

- Relaunch vm provisionning
  - `vagrant reload --provision`

- Destroy VM
  - `vagrant destroy`
