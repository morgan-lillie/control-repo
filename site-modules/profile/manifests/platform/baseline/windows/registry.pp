class profile::platform::baseline::windows::registry {

registry_value { 'HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\IEHarden':
    ensure => present,
    data => '00000001',
    type => 'dword',
}
}
