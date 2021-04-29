Facter.add(:department) do
    setcode do
        hostname = Facter.value(:hostname)
        departmentid = hostname[-1]
        if departmentid == 'n'
            department = 'marketing'            
        elsif departmentid == 'r'
            department = 'sales'
        elsif departmentid == 'i'
            department = 'it'
        else
            department = 'it'
        end
        department

    end
end 
