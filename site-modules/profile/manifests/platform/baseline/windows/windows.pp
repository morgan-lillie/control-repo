class profile::platform::baseline::users::windows {
  
  user { 'Cont User':
    ensure => present,
    password => 'puppet',
    groups => ['Administrators', 'Cont Group'],
    }
   
  group { 'Cont Group':
      ensure => present,
      }
}
