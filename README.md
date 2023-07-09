# cinc-cookbook-apple-silicon

An example of how to set up test kitchen with Cinc and Apple Silicon Macs using Parallels as the hypervisor

This example assumes you are familiar with Chef/Cinc. If you're not, you might want to learn the basics from https://learn.chef.io before you try this.

## Setup

Purchase and install a copy of Parallels (I know it's pricey, but hey, it's easy)

Install and configure Cinc from the instructions at https://cinc.sh/start/workstation/ and https://docs.chef.io/workstation/config_rb/

Install Vagrant and the Parallels plugin using this little snippet of code

```
brew install vagrant
vagrant plugin install vagrant-parallels
```

## Using this example cookbook

```
git clone github.com/trickyearlobe/cinc-cookbook-apple-silicon
cd cinc-cookbook-apple-silicon
kitchen test
```

## How it works

The configuration magic to get test kitchen to work with Cinc and Parallels on Apple Silicon lives in the kitchen.yml file and it's really simple

Change the driver that Vagrant uses to spin up machines

```
driver:
  name: vagrant
  provider: parallels
```

Use a vagrant box for the ARM instruction set used on Apple Silicon

```
platforms:
  - name: tricky/rocky.9.2.aarch64
```

Change the provisioner to Cinc

```
provisioner:
  name: chef_zero
  product_name: cinc
  product_version: 18
```
