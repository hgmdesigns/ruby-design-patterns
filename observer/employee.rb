require 'observer'
require_relative 'subject'
class Employee
  include Observable
  attr_reader :name
  attr_accessor :title, :salary
  
  def initialize(name, title, salary)
    super()
    @name = name
    @title = title
    @salary = salary
  end
  
  def salary=(new_salary)
    old_salary = @salary
    @salary = new_salary
    if old_salary != new_salary
      changed
      notify_observers(self)
    end
  end
end