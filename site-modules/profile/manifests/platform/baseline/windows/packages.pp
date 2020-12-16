#Ensures presence of chocolately and some of its packages
class profile::platform::baseline::windows::packages{

  # TODO: Indentation


class {'chocolatey':
  chocolatey_download_url       => 'https://chocolatey.org/api/v2/package/chocolatey',
  use_7zip                      => false,
  choco_install_timeout_seconds => 2700,
}


file { 'C:\Users\Administrator\Downloads\chocolatey.0.10.15.nupkg':
  ensure => absent,
  }

  # TODO: Hash rocket (=>) alignment
package { '7zip':
  ensure => latest,
  notify => Reboot['after_run'],
}

reboot { 'after_run':
  apply  => finished,
}
}


