# shorewall - Used for managing installation and configuration
# of Shorewall
#
# @author Peter Souter and contributors
#
# @example Default - This will by default ensure shorewall is installed
#   with the default standalone config (See http://shorewall.net/standalone.htm).
#   include ::shorewall
#
# @example Override the shorewall.conf file with a profile template
#   class {'::shorewall':
#     shorewall_conf_content => template('profile/shorewall/shorewall_conf_content.erb'),
#   }
#
# @param [String] shorewall_conf_content Content of shorewall.conf file
# @param [String] hosts_config_content   Content of /etc/shorewall/hosts file
# @param [String] interfaces_config_content Content of /etc/shorewall/interfaces file
# @param [String] masq_config_content   Content of /etc/shorewall/masq file
# @param [String] policy_config_content   Content of /etc/shorewall/policy file
# @param [String] routestopped_config_content Content of /etc/shorewall/routestopped file
# @param [String] rules_config_content   Content of /etc/shorewall/rules file
# @param [String] tcclasses_config_content   Content of /etc/shorewall/tcclasses file
# @param [String] tcdevices_config_content  Content of /etc/shorewall/tcdevices file
# @param [String] tcrules_config_content   Content of /etc/shorewall/tcrules file
# @param [String] tunnels_config_content    Content of /etc/shorewall/tunnels file
# @param [String] zones_config_content    Content of /etc/shorewall/zones file
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

  class { '::shorewall::install': } ->
  class { '::shorewall::config': } ~>
  class { '::shorewall::service': } ->
  Class['::shorewall']
}
