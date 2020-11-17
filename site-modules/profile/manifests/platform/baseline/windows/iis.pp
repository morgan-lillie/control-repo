class profile::platform::baseline::windows::iis {

$iis_features = ['Web-Server','Web-WebServer','Web-Asp-Net45','Web-ISAPI-Ext','Web-ISAPI-Filter','NET-Framework-45-ASPNET','WAS-NET-Environment','Web-Http-Redirect','Web-Filtering','Web-Mgmt-Console','Web-Mgmt-Tools']

windowsfeature { $iis_features:
  ensure => present,
}




iis_application_pool { 'minimal_site_app_pool':
  ensure                  => 'present',
  state                   => 'started',
  managed_pipeline_mode   => 'Integrated',
  managed_runtime_version => 'v4.0',
} ->

iis_site { 'minimal':
  ensure          => 'started',
  physicalpath    => 'c:\\inetpub\\minimal',
  applicationpool => 'minimal_site_app_pool',
  require         => File['minimal'],
}

file { 'minimal':
  ensure => 'directory',
  path   => 'c:\\inetpub\\minimal',
}
}
