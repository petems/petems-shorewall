# == Class shorewall::params
#
# This class is meant to be called from shorewall.
# It sets variables according to platform.
#
class shorewall::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'shorewall'
      $service_name = 'shorewall'
    }
    'RedHat', 'Amazon': {
      $package_name = 'shorewall'
      $service_name = 'shorewall'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
