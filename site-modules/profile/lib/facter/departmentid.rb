Facter.add(:departmentid) do
    hostname = $facts['hostname']
    setcode do
        hostname[-1]
    end
end