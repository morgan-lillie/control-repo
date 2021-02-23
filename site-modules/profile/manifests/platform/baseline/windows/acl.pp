#This class manages ACL for the cont directory
class profile::platform::baseline::windows::acl {
  require windows

  # TODO: Indentation should be consistent with style guide. Use puppet vscode
  # pluigin to check
  # https://puppet.com/docs/puppet/7.0/style_guide.html#spacing-indentation-and-whitespace

acl { 'c:/lead':
  target      => 'c:/lead',
  purge       => false,
  permissions => [
  { identity => 'Administrator', rights => ['full'] },
  { identity => 'Lead User', rights => ['full'] },
  { identity => 'Users', rights => ['read'] },
  ],
  owner       => 'Lead User',

  }

  # TODO: How can we enusre that the 'Cont User' is already present by the time
  # this code is run? It will fail otherwise...
}
