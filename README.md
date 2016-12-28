# redhat_cve2016

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with redhat_cve2016](#setup)
    * [What redhat_cve2016 affects](#what-redhat_cve2016-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with redhat_cve2016](#beginning-with-redhat_cve2016)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Module will run RedHat script to find the Vulnerable kernel and report in facter. 

## Module Description

This module will run RedHat script (rh-cve-2016-5195_3.sh) to find the Vulnerable kernel and report in facter. This module will not patch the vulnerable kernel, it just report whether kernel on the puppet agent is Vulnerable or not and report in facter. Facter can be verified using "facter -p kernelstatus"

## Setup

Just install the module and assign to profiles/roles or directly on site.pp

### What redhat_cve2016 affects

* It will copy rh-cve-2016-5195_3.sh from module to /tmp/ and run. 
* Then report in facter

### Setup Requirements **OPTIONAL**

Nothing.

### Beginning with redhat_cve2016

```ruby
class { 'redhat_cve2016' : } 
```

## Usage

Nothing special variables. 

## Reference

* https://access.redhat.com/security/cve/cve-2016-5195


## Limitations

Tested in RedHat/CentOS 5, 6 & 7

## Development


## Release Notes/Contributors/Etc **Optional**


