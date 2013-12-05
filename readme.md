# Ansible Deploy

Ansible playbooks and roles for deploying applications.  W.I.P.

# Usage

Vagrant only for now

## Install Dependencies (OSX)

 * install [vagrant](http://www.vagrantbox.es/)
 * install ansible and pycurl

```shell
brew install ansible
sudo pip install pycurl
```

## Run Vagrant

### bring up

```shell
vagrant up
```

### provision running instance

```shell
vagrant provision
```

### destroy instance

```shell
vagrant destroy -f
```
