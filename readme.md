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

## Crypto Keys

### Github deploy key:

Place a private SSH key used for checking out code from github in `files/private_keys/github-deploy`.

example:
```shell
$ cp ~/.ssh/id_rsa files/private_keys/github-deploy
```

### SSH Keys for deploy user (optional):

Place public keys for accessing the `deploy` user over ssh in `files/public_keys/deploy`.

example:
```shell
$ cp ~/.ssh/id_rsa.pub files/public_keys/deploy/me.pub
```

###

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
ansible all -m setup -i vagrant_ansible_inventory_default --user=vagrant --private-key=~/.vagrant.d/insecure_private_key
```
