Facter.add(:department) do
    setcode do
        hostname = Facter.value('hostname')
        department = hostname[-1]
        if departmentid == '1'
            department = 'marketing'            
        elsif departmentid == 'r'
            department = 'sales'
        elsif departmentid == 'i'
            department = 'it'
        else
            department = 'null'
        end
        department

    end
end 
