class profile::platform::baseline::windows::acl {

  # TODO: Indentation should be consistent with style guide. Use puppet vscode
  # pluigin to check
  # https://puppet.com/docs/puppet/7.0/style_guide.html#spacing-indentation-and-whitespace

acl { 'c:/cont':
  target => 'c:/cont',
  purge => false,
  permissions => [
   { identity => 'Administrator', rights => ['full'] },
   { identity => 'Cont User', rights => ['full'] },
   { identity => 'Users', rights => ['read'] },
 ],
  owner => 'Cont User',
 
}

  # TODO: How can we enusre that the 'Cont User' is already present by the time
  # this code is run? It will fail otherwise...
}
