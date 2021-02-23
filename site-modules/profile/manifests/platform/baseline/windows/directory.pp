#ensures presence of cont directory and that it belongs to the Cont User
class profile::platform::baseline::windows::directory {

  # TODO: Alignment
  # TODO: Work out how to ensure that the cont user is already there
  require profile::platform::baseline::windows::windows
  file { 'c:/lead':
    ensure => 'directory',
    owner  => 'Lead User',
    group  => 'Lead Group',
}
}
