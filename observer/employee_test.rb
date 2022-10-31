require 'test/unit'
require_relative 'employee'
require_relative 'payroll'
require_relative 'tax_man'

class EmployeeTest < Test::Unit::TestCase
  def test_payroll_notificiation
    # pending
    payroll = Payroll.new
    hassan = Employee.new("Hassan", "Software Engineer", 5000)
    hassan.add_observer(payroll)
    p hassan.salary = 55000
  end
  
  def test_tax_man_notification
    # pending
    tax_man = TaxMan.new
    hassan = Employee.new("Hassan", "Software Engineer", 5000)
    hassan.add_observer(tax_man)
    p hassan.salary = 55000
  end
  
  def test_block_objects_as_observables 
    # pending
    hassan = Employee.new("Hassan", "Software Engineer", 5000)
    hassan.add_observer do |changed_employee|
      puts("Cut a new check for #{changed_employee.name}!")
      puts("His salary is now #{changed_employee.salary}!")
    end
  end
end