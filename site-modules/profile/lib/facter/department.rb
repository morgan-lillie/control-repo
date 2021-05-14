Facter.add(:department) do
    setcode do
        hostname = Facter.value(:hostname)
        departmentid = hostname[-1]

        case departmentid
        when 'm'
            department = 'marketing'
        when 's'
            department = 'sales'
        when 'i'
            department = 'it'
        end
        department
    end
end 
