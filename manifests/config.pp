# == Class shorewall::config
#
# This class is called from shorewall for service config.
#
class shorewall::config {

  file { '/etc/shorewall/zones':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }

  file { '/etc/shorewall/interfaces':
    ensure  => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',

  }

  file { '/etc/shorewall/hosts':
    ensure  => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

  file { '/etc/shorewall/policy':
    ensure  => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

  file { '/etc/shorewall/routestopped':
    ensure  => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

  file { '/etc/shorewall/common-rules':
    ensure  => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

  file { '/etc/shorewall/rules':
    ensure  => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

}
