#manages users, groups, and security policy
class profile::platform::baseline::windows::leaduser {

  # TODO: Indentation + alignment + hash rockets
  user { 'Lead User':
    ensure   => present,
    password => 'puppet',
    groups   => ['Administrators', 'Lead Group'],
  }

  group { 'Lead Group':
    ensure => present,
  }
  #requires mod 'ayohrling-local_security_policy', '0.8.0'    
  local_security_policy { 'Log on as a service':
    ensure       => present,
    policy_value => 'Lead Group',
  }
}
