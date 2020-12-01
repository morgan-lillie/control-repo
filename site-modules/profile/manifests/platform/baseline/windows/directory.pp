class profile::platform::baseline::windows::directory {

  # TODO: Alignment
  # TODO: Work out how to ensure that the cont user is already there
  file { 'c:/cont':
    ensure => 'directory',
    owner  => 'Cont User',
    group  => 'Cont Group',
}
}
