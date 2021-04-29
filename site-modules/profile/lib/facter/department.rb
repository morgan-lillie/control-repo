Facter.add(:department) do
    setcode do
        hostname = Facter.value('hostname')
        departmentid = hostname
        if departmentid = 'm'
            department = 'marketing'            
        elsif departmentid = 's'
            department = 'sales'
        elsif departmentid = 'i'
            department = 'it'
        else
            department = 'null'
        end
        department

    end
end 
