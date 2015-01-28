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

## Access Keys

### Github deploy key:

Place a private SSH key used for checking out code from github in `environments/vagrant/files/private_keys/github-deploy`.

example:
```shell
$ cp ~/.ssh/id_rsa environments/vagrant/files/private_keys/github-deploy
```

### SSH Keys for deploy user (optional):

Place public keys for accessing the `deploy` user over ssh in `environments/vagrant/files/public_keys/deploy`.

example:
```shell
$ cp ~/.ssh/id_rsa.pub environments/vagrant/files/public_keys/deploy/me.pub
```

## Hostname Configuration

Add these lines to the end of `/etc/hosts` on your system.

```
192.168.33.10 nodeapp.vagrant.dev
192.168.33.10 railsapp.vagrant.dev
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

# Notes
find all of the variables on the host
```shell
ansible all -m setup -i environments/vagrant/inventory --user=vagrant --private-key=~/.vagrant.d/insecure_private_key
```
