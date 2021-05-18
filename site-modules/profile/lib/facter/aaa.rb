Facter.add(:department) do
    setcode do
        aaa = Facter.value(:hostname)
        hostname
    end
end 