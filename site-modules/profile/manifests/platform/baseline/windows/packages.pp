class profile::platform::baseline::windows::packages{


#class { 'archive':
#  seven_zip_name     => '7-Zip 9.20 (x64 edition)',
#  seven_zip_source   => 'C:/Windows/Temp/7z920-x64.msi',
#  seven_zip_provider => 'windows',
#
class {'chocolatey':
  chocolatey_download_url         => 'C:\Users\Administrator\Downloads\chocolatey.0.10.15.nupkg',
  use_7zip                        => false,
  choco_install_timeout_seconds   => 2700,
}

}


