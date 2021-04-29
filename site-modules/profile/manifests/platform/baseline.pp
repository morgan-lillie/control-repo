class profile::platform::baseline{
  include profile::platform::baseline::windows::registry
  include profile::platform::baseline::windows::leaduser
  include profile::platform::baseline::windows::packages
  include profile::hiera_test
}
