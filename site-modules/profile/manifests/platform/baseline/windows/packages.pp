class profile::platform::baseline::windows::packages{

  # TODO: Indentation

#class { 'archive':
#  seven_zip_name     => '7-Zip 9.20 (x64 edition)',
#  seven_zip_source   => 'C:/Windows/Temp/7z920-x64.msi',
#  seven_zip_provider => 'windows',
#

  # TODO: Hash rocket (=>) alignment
class {'chocolatey':
  chocolatey_download_url         => "https://chocolatey.org/api/v2/package/chocolatey",
  use_7zip                        => false,
  choco_install_timeout_seconds   => 2700,
}


file { 'C:\Users\Administrator\Downloads\chocolatey.0.10.15.nupkg':
  ensure => absent,
  }

  # TODO: Hash rocket (=>) alignment
package { '7zip':
  ensure   => latest,
  notify => Reboot['after_run'],
}

reboot { 'after_run':
  apply  => finished,
}
}


