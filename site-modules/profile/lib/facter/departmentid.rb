Facter.add(:departmentid) do
    setcode do
        hostname = Facter.value('hostname')
        hostname[-1]
    end
end