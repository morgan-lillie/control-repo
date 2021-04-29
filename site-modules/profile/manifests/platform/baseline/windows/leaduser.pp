#manages users, groups, and security policy
class profile::platform::baseline::windows::leaduser (
  String $leaduser,
  String $password,
) {



  # if $department == 'marketing' {
  #   $leaduser = 'marketlead'
  #   $password = 'password3'
  # } elsif $departmentid == 'sales' {
  #   $leaduser = 'saleslead'
  #   $password = 'alwaysbeclosing'
  # } elsif $department == 'it' {
  #   $leaduser = 'ITlead'
  #   $password = 'hunter2'
  # } else {
  #   $leaduser = 'null'
  #   $password = 'null'
  # }

  # TODO: Indentation + alignment + hash rockets
  user { $leaduser:
    ensure   => present,
    password => $password,
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
