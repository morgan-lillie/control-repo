#ensures presence of cont directory and that it belongs to the Cont User
class profile::platform::baseline::windows::directory {

  # TODO: Alignment
  # TODO: Work out how to ensure that the cont user is already there
  require windows
  file { 'c:/cont':
    ensure => 'directory',
    owner  => 'Cont User',
    group  => 'Cont Group',
}
}
