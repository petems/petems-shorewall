# Class: shorewall
# ===========================
#
# Full description of class shorewall here.
#
# Parameters
# ----------
#
# * `sample parameter`
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
class shorewall (
  $package_name = $::shorewall::params::package_name,
  $service_name = $::shorewall::params::service_name,
) inherits ::shorewall::params {

  # validate parameters here

  class { '::shorewall::install': } ->
  class { '::shorewall::config': } ~>
  class { '::shorewall::service': } ->
  Class['::shorewall']
}
