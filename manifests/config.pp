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
    content => template('shorewall/etc/shorewall.conf.erb'),
  }

  file { '/etc/shorewall/interfaces':
    ensure  => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
    content => template('shorewall/etc/shorewall/interfaces.erb'),
  }

  file { '/etc/shorewall/policy':
    ensure  => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
    content => template('shorewall/etc/shorewall/policy.erb'),
  }

  file { '/etc/shorewall/rules':
    ensure  => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
    content => template('shorewall/etc/shorewall/rules.erb'),
  }

  file { '/etc/shorewall/zones':
    ensure  => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
    content => template('shorewall/etc/shorewall/zones.erb'),
  }

  file { '/etc/shorewall/masq':
    ensure  => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
    content => template('shorewall/etc/shorewall/masq.erb'),
  }

  file { '/etc/shorewall/routestopped':
    ensure  => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
    content => template('shorewall/etc/shorewall/routestopped.erb'),
  }

  file { '/etc/shorewall/tcclasses':
    ensure  => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
    content => template('shorewall/etc/shorewall/tcclasses.erb'),
  }

  file { '/etc/shorewall/tcdevices':
    ensure  => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
    content => template('shorewall/etc/shorewall/tcdevices.erb'),
  }

  file { '/etc/shorewall/tcrules':
    ensure  => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
    content => template('shorewall/etc/shorewall/tcrules.erb'),
  }

  file { '/etc/shorewall/tunnels':
    ensure  => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
    content => template('shorewall/etc/shorewall/tunnels.erb'),
  }

  file { '/etc/shorewall/hosts':
    ensure  => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0600',
    content => template('shorewall/etc/shorewall/hosts.erb'),
  }

}
