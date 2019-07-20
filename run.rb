require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
manager1 = Manager.new("First Manager", 12, "sales")
manager2 = Manager.new("Second Manager", 16, "PR")

employee1 = Employee.new("Larry", 25, manager1)
employee2 = Employee.new("Bob", 20, manager1)
employee3 = Employee.new("Sammy", 25, manager1)
employee3 = Employee.new("Ronny", 30, manager2)

over_paid = Employee.paid_over(20)

first_dept_employ = Employee.find_by_department("PR")

manager_average_age = Manager.average_age

tax_qual = Employee.tax_bracket(employee2)

binding.pry
puts "done"
