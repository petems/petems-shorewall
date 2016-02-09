# == Class shorewall::config
#
# This class is called from shorewall for service config.
#
class shorewall::config {

  file {'/etc/shorewall/shorewall.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => $::shorewall::shorewall_conf_content,
  }

  file { '/etc/shorewall/interfaces':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => $::shorewall::interfaces_config_content,
  }

  file { '/etc/shorewall/policy':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => $::shorewall::policy_config_content,
  }

  file { '/etc/shorewall/rules':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => $::shorewall::rules_config_content,
  }

  file { '/etc/shorewall/zones':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => $::shorewall::zones_config_content,
  }

  file { '/etc/shorewall/masq':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => $::shorewall::masq_config_content,
  }

  file { '/etc/shorewall/routestopped':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => $::shorewall::routestopped_config_content,
  }

  file { '/etc/shorewall/tcclasses':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => $::shorewall::tcclasses_config_content,
  }

  file { '/etc/shorewall/tcdevices':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => $::shorewall::tcdevices_config_content,
  }

  file { '/etc/shorewall/tcrules':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => $::shorewall::tcrules_config_content,
  }

  file { '/etc/shorewall/tunnels':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => $::shorewall::tunnels_config_content,
  }

  file { '/etc/shorewall/hosts':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => $::shorewall::hosts_config_content,
  }

}
