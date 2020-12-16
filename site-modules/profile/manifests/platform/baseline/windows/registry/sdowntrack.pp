#manages the registry to ensure that shutdown tracker is enabled
class profile::platform::baseline::windows::registry::sdowntrack {

#ensures the windoows shutdown tracker is enabled with the shutdown tracker
registry_value { 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability\shutdown\ReasonCode':
    ensure => present,
    data   => '1',
    type   => 'dword',
    }

}
