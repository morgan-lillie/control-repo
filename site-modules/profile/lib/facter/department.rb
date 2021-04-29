Facter.add(:department) do
    hostname = $facts['hostname']
    setcode do
        hostname = Facter.value('hostname')
        hostname[-1]
    end
end 
