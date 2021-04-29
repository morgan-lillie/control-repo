Facter.add(:department) do
    setcode do
        hostname = Facter.value(:hostname)
        departmentid = hostname[-1]
        if departmentid == 'n'
            department = 'marketing'            
        elsif departmentid == 'e'
            department = 'sales'
        elsif departmentid == 'i'
            department = 'it'
        else
            department = 'null'
        end
        department

    end
end 
