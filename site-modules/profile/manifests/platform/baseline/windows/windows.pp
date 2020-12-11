class profile::platform::baseline::windows::windows {
  
  # TODO: Indentation + alignment + hash rockets
  user { 'Cont User':
    ensure   => present,
    password => 'puppet',
    groups   => ['Administrators', 'Cont Group'],
    }
   
  group { 'Cont Group':
      ensure => present,
      }
  #requires mod 'ayohrling-local_security_policy', '0.8.0'    
  local_security_policy { 'Log on as a service':
  ensure       => present,
  policy_value => 'Cont Group',
}
}
