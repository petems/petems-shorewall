# == Class shorewall::config
#
# This class is called from shorewall for service config.
#
class shorewall::config {

  file {'/etc/shorewall.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => $::shorewall::shorewall_conf_content,
  }

  file { '/etc/shorewall/interfaces':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => $::shorewall::interfaces_config_content,
  }

  file { '/etc/shorewall/policy':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => $::shorewall::policy_config_content,
  }

  file { '/etc/shorewall/rules':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => $::shorewall::rules_config_content,
  }

  file { '/etc/shorewall/zones':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => $::shorewall::zones_config_content,
  }

  file { '/etc/shorewall/masq':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => $::shorewall::masq_config_content,
  }

  file { '/etc/shorewall/routestopped':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => $::shorewall::routestopped_config_content,
  }

  file { '/etc/shorewall/tcclasses':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => $::shorewall::tcclasses_config_content,
  }

  file { '/etc/shorewall/tcdevices':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => $::shorewall::tcdevices_config_content,
  }

  file { '/etc/shorewall/tcrules':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => $::shorewall::tcrules_config_content,
  }

  file { '/etc/shorewall/tunnels':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => $::shorewall::tunnels_config_content,
  }

  file { '/etc/shorewall/hosts':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => $::shorewall::hosts_config_content,
  }

}
