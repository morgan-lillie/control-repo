#manages the registry to ensure that IESC is enabled
class profile::platform::baseline::windows::registry {

  # TODO: Indentation
  # TODO: Hash rocket (=>) alignment
registry_value { 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}\IsInstalled': # lint:ignore:140chars
    ensure => present,
    data   => '1',
    type   => 'dword',
}

registry_value { 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}\IsInstalled': # lint:ignore:140chars
    ensure => present,
    data   => '1',
    type   => 'dword',
}

registry_value { 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability\shutdown\ReasonCode':
    ensure => present,
    data   => '1',
    type   => 'dword',
    }

}
