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
  $package_name                = $::shorewall::params::package_name,
  $service_name                = $::shorewall::params::service_name,
  $shorewall_conf_content      = $::shorewall::params::shorewall_conf_content,
  $hosts_config_content        = $::shorewall::params::hosts_config_content,
  $interfaces_config_content   = $::shorewall::params::interfaces_config_content,
  $masq_config_content         = $::shorewall::params::masq_config_content,
  $policy_config_content       = $::shorewall::params::policy_config_content,
  $routestopped_config_content = $::shorewall::params::routestopped_config_content,
  $rules_config_content        = $::shorewall::params::rules_config_content,
  $tcclasses_config_content    = $::shorewall::params::tcclasses_config_content,
  $tcdevices_config_content    = $::shorewall::params::tcdevices_config_content,
  $tcrules_config_content      = $::shorewall::params::tcrules_config_content,
  $tunnels_config_content      = $::shorewall::params::tunnels_config_content,
  $zones_config_content        = $::shorewall::params::zones_config_content,
) inherits ::shorewall::params {

  # validate parameters here

  class { '::shorewall::install': } ->
  class { '::shorewall::config': } ~>
  class { '::shorewall::service': } ->
  Class['::shorewall']
}
