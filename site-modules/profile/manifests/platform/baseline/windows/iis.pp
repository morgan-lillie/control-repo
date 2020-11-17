class profile::platform::baseline::windows::iis {

$iis_features = ['Web-Server','Web-WebServer','Web-Asp-Net45','Web-ISAPI-Ext','Web-ISAPI-Filter','NET-Framework-45-ASPNET','WAS-NET-Environment','Web-Http-Redirect','Web-Filtering','Web-Mgmt-Console','Web-Mgmt-Tools']

windowsfeature { $iis_features:
  ensure => present,
}



$iis_features = ['Web-WebServer','Web-Scripting-Tools']

iis_feature { $iis_features:
  ensure => 'present',
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
