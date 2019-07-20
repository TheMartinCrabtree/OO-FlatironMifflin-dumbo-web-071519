

class Manager

@@all = []
#age is Fixnum or Integer
attr_accessor :name, :department, :age

def initialize(name, age, department)
    @name = name
    @age = age
    @department = department

    @@all << self
end

def self.all
    @@all
end


def hire_employee(employee_name, employee_salary)
#adds employee to the list of employees for the manager
Employee.new(employee_name, employee_salary, self)
    

end

def self.all_departments
#return array of all of the departments
    self.all.map do |manager|
        manager.department
    end.uniq

end

def self.average_age
#return a float average age of managers
    age_array = self.all.map do |manager|
        manager.age
    end

    ###### collect, divide by .length, ensure is a float
    return  age_array.reduce(:+) / age_array.length
end







end
