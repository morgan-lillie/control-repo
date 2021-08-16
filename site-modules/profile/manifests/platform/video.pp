#
class profile::platform::video{

file { 'sample video':
  ensure => file,
  path   => 'C:/',
  source => 'puppet:///modules/testvid.mov',
  }
}
