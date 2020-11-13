class profile::platform::baseline::windows::windows {


file { 'c:/cont/test.txt':
  ensure => 'file',
  owner  => 'Cont User',
  group  => 'Cont Group',
}
}
