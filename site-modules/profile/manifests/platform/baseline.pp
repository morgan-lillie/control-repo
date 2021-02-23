class profile::baseline{
  include profile::platform::baseline::windows::registry
  include profile::platform::baseline::windows::windows
  include profile::platform::baseline::windows::packages
}
