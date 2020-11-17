class profile::platform::baseline::windows::iis {

dism { 'IIS-WebServer':
  ensure => present,
  answer => 'C:\answer\iis.xml',
}




# Delete the default website to prevent a port binding conflict.
iis_site {'Default Web Site':
  ensure  => absent,
  require => Iis_feature['Web-WebServer'],
}

iis_site { 'minimal':
  ensure          => 'started',
  physicalpath    => 'c:\\inetpub\\minimal',
  applicationpool => 'DefaultAppPool',
  require         => [
    File['minimal'],
    Iis_site['Default Web Site']
  ],
}

file { 'minimal':
  ensure => 'directory',
  path   => 'c:\\inetpub\\minimal',
}
}
