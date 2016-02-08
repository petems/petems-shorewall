# == Class shorewall::service
#
# This class is meant to be called from shorewall.
# It ensure the service is running.
#
class shorewall::service {

  service { $::shorewall::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
