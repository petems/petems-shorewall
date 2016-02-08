# == Class shorewall::install
#
# This class is called from shorewall for install.
#
class shorewall::install {

  package { $::shorewall::package_name:
    ensure => present,
  }
}
