class Payroll
  def update(changed_employee)
     p "Cut a new check for #{changed_employee.name}!" + 
      "\nHis salary is now changed #{changed_employee.salary}!"
  end
end