#manages the registry to ensure that IESC is enabled for users and admins
class profile::platform::baseline::windows::registry::ieesc {

#ensure registry key is presesent and ensures IEESC is enabled for admins
registry_value { 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}\IsInstalled': # lint:ignore:140chars
    ensure => present,
    data   => '1',
    type   => 'dword',
}

#ensure registry key is presesent and ensures IEESC is enabled for admins
registry_value { 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}\IsInstalled': # lint:ignore:140chars
    ensure => present,
    data   => '1',
    type   => 'dword',
}

}
