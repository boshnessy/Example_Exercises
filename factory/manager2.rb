class Employee
  attr_reader :first_name, :last_name, :salary
  attr_writer :active
  # get an attr that can do both
  # attr_accessor

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee1.print_info
employee2.print_info

class Manager < Employee
  attr_reader :employees # created a method called employees (defining the method)
  attr_writer :active

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end

  # Create a method in the Manager class called give_all_raises that loops through each of the manager’s employees and gives them a raise (using the give_annual_raise method). 
    # make a method called give_all_raises --> test it by printing out random phrase
    # what are the manager's employees? --> the array within the manager hash - make sure to define employees before calling (i.e. line 27)
    # loop through manager's employees
    # give them all a raise (using give_annual_raise method)

  def give_all_raises
    @employees.each do |employee| # employees = array, employee = employee1
      employee.give_annual_raise # use employee, not employeeS!
    end
  end

  # Create a method in the Manager class called fire_all_employees that loops through each of the manager’s employees and changes their active status to false.
  def fire_all_employees
    employees.each do |employee| # |employee| = block variable
      employee.active = false
    end
  end
end

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_report

p manager
manager.give_all_raises
manager.fire_all_employees
p manager