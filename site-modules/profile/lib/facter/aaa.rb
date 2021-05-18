Facter.add(:aaa) do
    setcode do
        aaa = Facter.value(:hostname)
        aaa
    end
end  