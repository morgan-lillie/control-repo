#
class profile::platform::video{

file { 'C:/testvid.txt':
  ensure  => present,
  #source  => 'puppet:///modules/videos/testvid.mov',
  content => 'test'
  }
}
