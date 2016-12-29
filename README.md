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

Module will run RedHat provided script to find the Vulnerable kernel (Dirty COW) and report in facter. 

## Module Description

This module will run RedHat provided script (rh-cve-2016-5195_3.sh) to find the Dirty COW vulnerable kernel and report in facter. This module will not patch the vulnerable kernel, it just report whether kernel vulnerable or not and report in facter. Facter can be verified using "facter -p kernelstatus"

## Setup

Just install the module and assign to profiles/roles or directly on site.pp.

### What redhat_cve2016 affects

* redhat_cve2016 class will copy the script to /tmp 
* kernelstatus facter will execute the script and report the output in facter.
* we can verify the facter in any supporting web interfaces or command (facter -p kernelstatus)

### Setup Requirements.

It is simple module, not required any setup.

### Beginning with redhat_cve2016

```ruby
class { 'redhat_cve2016' : } 
```

## Usage

No special variables. To get the status of kernels,

```ruby
include redhat_cve2016
```

To remove this module,

Directly edit the redhat_cve2016.pp file in the module and make sure ensure is absent and remove the kernelstatus.rb file from the facter. This will remove the script and facter from your puppet nodes.

## Reference

* https://access.redhat.com/security/cve/cve-2016-5195

## Limitations

RedHat/CentOS 5, 6 & 7

## Development

