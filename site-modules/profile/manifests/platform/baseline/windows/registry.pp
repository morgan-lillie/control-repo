class profile::platform::baseline::windows::registry {

registry_key { 'HKLM\System\CurrentControlSet\Services\Puppet':
    ensure => present,
}

registry_key { 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}':
    ensure => present,
    value => '00000001'
}
}
