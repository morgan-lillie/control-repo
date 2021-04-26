Facter.add(:department) do
    setcode do
        hostname = Facter.value('hostname')
        departmentid = hostname[-1]
        if departmentid = m [
            department = "marketing"
         ] elsif departmentid = s [
            department = "sales"
          ] elsif departmentid = "i" [
            department = "it"
           ] else [
            department = "unknown"
            ] end
        department
    end
end

