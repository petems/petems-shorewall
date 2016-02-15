# Shorewall

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup - The basics of getting started with shorewall](#setup)
    * [What shorewall affects](#what-shorewall-affects)
    * [Beginning with shorewall](#beginning-with-shorewall)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

A basic module to install and configure [Shorewall](http://shorewall.net/).

## Module Description

This module sets up Shorewall with the [default standalone config](http://shorewall.net/standalone.htm).

Configuration is done by passing a template to the various config elements, as the usecase I had to setup Shorewall was to implement pre-existing shorewall configs. If you'd prefer parameterised config, feel free to implement!

## Setup

### What shorewall affects

* The Shorewall package and service
* Config files located under '/etc/shorewall/'

### Beginning with shorewall

`include shorewall`

## Usage

If you're using the [roles and profiles pattern](https://puppetlabs.com/presentations/designing-puppet-rolesprofiles-pattern) then you could make a profile that looks something like this

```puppet
class profiles::shorewall_server {
  class {'::shorewall':
  shorewall_conf_content      => template('profile/shorewall/shorewall_conf_content.erb'),
  hosts_config_content        => template('profile/shorewall/hosts.erb'),
  interfaces_config_content   => template('profile/shorewall/interfaces.erb'),
  masq_config_content         => template('profile/shorewall/masq.erb'),
  policy_config_content       => template('profile/shorewall/policy.erb'),
  routestopped_config_content => template('profile/shorewall/routestopped.erb'),
  rules_config_content        => template('profile/shorewall/rules.erb'),
  tcclasses_config_content    => template('profile/shorewall/tcclasses.erb'),
  tcdevices_config_content    => template('profile/shorewall/tcdevices.erb'),
  tcrules_config_content      => template('profile/shorewall/tcrules.erb'),
  tunnels_config_content      => template('profile/shorewall/tunnels.erb'),
  zones_config_content        => template('profile/shorewall/zones.erb'),
  }
}
```

## Limitations

My main usecase is RHEL, but should work on Debian based systems too!

##Development

Follow the CONTRIBUTING.md guidelines! :)
