acl { 'c:/cont':
  target => 'c:/cont',
  purge = false,
  permissions => [
   { identity => 'Administrator', rights => ['full'] },
   { identity => 'Cont User', rights => ['full'] },
   { identity => 'Users', rights => ['read'] },
 ],
  owner => 'Cont User',
 
}
