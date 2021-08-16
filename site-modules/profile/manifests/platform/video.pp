#
class profile::platform::video{

file { 'C:/testvid.mov':
  ensure => file,
  source => 'puppet:///modules/videos/testvid.mov',
  }
}
