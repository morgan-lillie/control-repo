#
class profile::platform::video{

file { 'C:/testvid.mov':
  ensure => present,
  source => 'puppet:///modules/videos/testvid.mov',
  }
}
