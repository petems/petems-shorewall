# == Class shorewall::config
#
# This class is called from shorewall for service config.
#
class shorewall::config {

  file {'/etc/shorewall.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('shorewall/etc/shorewall.conf.erb'),
  }

  file { '/etc/shorewall/interfaces':
    ensure  => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    content => template('shorewall/etc/shorewall/interfaces.erb'),
  }

  file { '/etc/shorewall/policy':
    ensure  => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    content => template('shorewall/etc/shorewall/policy.erb'),
  }

  file { '/etc/shorewall/rules':
    ensure  => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    content => template('shorewall/etc/shorewall/rules.erb'),
  }

  file { '/etc/shorewall/zones':
    ensure  => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    content => template('shorewall/etc/shorewall/zones.erb'),
  }

}
