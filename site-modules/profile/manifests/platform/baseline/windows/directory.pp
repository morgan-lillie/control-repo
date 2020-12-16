#ensures presence of cont directory and that it belongs to the Cont User and manages ACLs of the directory
class profile::platform::baseline::windows::directory {

  # TODO: Alignment
  # TODO: Work out how to ensure that the cont user is already there
  require windows
  file { 'c:/cont':
    ensure => 'directory',
    owner  => 'Cont User',
    group  => 'Cont Group',
}

acl { 'c:/cont':
  target      => 'c:/cont',
  purge       => false,
  permissions => [
  { identity => 'Administrator', rights => ['full'] },
  { identity => 'Cont User', rights => ['full'] },
  { identity => 'Users', rights => ['read'] },
  ],
  owner       => 'Cont User',

  }

}
