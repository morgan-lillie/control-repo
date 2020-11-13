class profile::platform::baseline::windows::directory {


file { 'c:/cont':
  ensure => 'directory',
  owner  => 'Cont User',
  group  => 'Cont Group',
}
}
