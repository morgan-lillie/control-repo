Facter.add(:department) do
    setcode do
        aaa = Facter.value(:hostname)
        aaa
    end
end 