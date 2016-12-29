# == Class: redhat_cve2016
#
# This module is used to find Vulnerable kernels in your environment.
# RedHat has announced Dirty COW issue in 2016.
# More details at https://access.redhat.com/security/vulnerabilities/DirtyCow
# You can see the kernelstatus facter in dashboards or "facter -p kernelstatus" command
#
# === Parameters
#
# Document parameters here.
#
#
# === Variables
# No variables
#
# === Examples
#
#  class { 'redhat_cve2016': }
#
# === Authors
#
# Dhanasekaran Nagappan <nndhanasekaran@gmail.com>
#
# === Copyright
#
# Copyright 2016 Dhanasekaran.
#
class redhat_cve2016 {

  file { '/tmp/rh-cve-2016-5195_3.sh':
    ensure => 'present',
    source => 'puppet:///modules/rhcve2016/rh-cve-2016-5195_3.sh',
    mode   => '0755',
    owner  => 'root',
    group  => 'root',
  }
}
