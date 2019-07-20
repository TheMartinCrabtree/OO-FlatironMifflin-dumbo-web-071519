class Employee
    attr_accessor :name, :salary, :manager_name
    @@all = []

    def initialize(name, salary, manager_name)
        @name = name
        @manager_name = manager_name
        @salary = salary

        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(pay)
        #return array of employees with salary over value
        self.all.select do |employee|
            employee.salary > pay
        end
    end


    def self.find_by_department(department_name)
        #returns the first employee whose manager is working in that department
        found_manager = Manager.all.find do |manager|
            manager.department == department_name
        end
        self.all.find do |employee|
            employee.manager_name == found_manager
        end

    end


    def self.tax_bracket(compare_employee)
        #returns an Array of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method
        self.all.select do |employee|
            employee.salary > compare_employee.salary - 5 && employee.salary < compare_employee.salary + 5
        end
    end




end
