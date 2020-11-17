acl { 'c:/cont':
  target => 'c:/cont',
  purge = false,
  permissions => [
   { identity => 'Administrator', rights => ['full'] },
   { identity => 'Cont User', rights => ['full'] },
   { identity => 'Cont Group', rights => ['read'] },
 ],
  owner => 'Cont User',
 
}
