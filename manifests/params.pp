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
      $package_name                = 'shorewall'
      $service_name                = 'shorewall'
      $shorewall_conf_content      = template('shorewall/etc/shorewall.conf.erb')
      $hosts_config_content        = template('shorewall/etc/shorewall/hosts.erb')
      $interfaces_config_content   = template('shorewall/etc/shorewall/interfaces.erb')
      $masq_config_content         = template('shorewall/etc/shorewall/masq.erb')
      $policy_config_content       = template('shorewall/etc/shorewall/policy.erb')
      $routestopped_config_content = template('shorewall/etc/shorewall/routestopped.erb')
      $rules_config_content        = template('shorewall/etc/shorewall/rules.erb')
      $tcclasses_config_content    = template('shorewall/etc/shorewall/tcclasses.erb')
      $tcdevices_config_content    = template('shorewall/etc/shorewall/tcdevices.erb')
      $tcrules_config_content      = template('shorewall/etc/shorewall/tcrules.erb')
      $tunnels_config_content      = template('shorewall/etc/shorewall/tunnels.erb')
      $zones_config_content        = template('shorewall/etc/shorewall/zones.erb')
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}

