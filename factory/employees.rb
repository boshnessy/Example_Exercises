# model employees using ruby

# Array Method
# first name, last name, salary, active status
employee1 = ["Majora", "Carter", 80000, true]
employee2 = ["Danilo", "Campos", 70000, false]

# Majora Carter makes 80000 per year.
# p employee1[0] + " " + employee1[1] + " makes $" + employee1[2].to_s + " " + "per year."
# employee1[2].to_s bc 80000 is not a string --> must convert to string with .to_s
# p "#{employee2[0]} #{employee2[1]} makes $#{employee2[2]} per year."

# Advantages of arrays: less text, faster, works with little data


# Hash Method
employee1 = {
  :first_name => "Majora", 
  :last_name => "Carter", 
  :salary => 80000, 
  :active => true
}

employee2 = {
  :first_name => "Danilo", 
  :last_name => "Campos", 
  :salary => 70000, 
  :active => false
}

# SAME AS employee2 on line 24 --> DON'T have to change p string
employee2 = {
  first_name: "Danilo", 
  last_name: "Campos", 
  salary: 70000, 
  active: false
}

# p "#{employee1[:first_name]} #{employee1[:last_name]} makes $#{employee1[:salary]} per year."
# p "#{employee2[:first_name]} #{employee2[:last_name]} makes $#{employee2[:salary]} per year."

# Advantages of hashes: order of hashes doesn't matter, never forget what's what (don't have to remember index #)


# Class Method
class Employee  # Factory creating the employees

  def initialize(input_first_name, input_last_name, input_salary, input_active)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active
  end

# getter/reader
  def first_name
    @first_name
  end

  def salary
    p @salary
  end

# setter/writer
  def first_name=(input_first_name)
    @first_name = input_first_name
  end

  # attr_reader :first_name --> shortcut for lines 65-67; typically goes right under: class Employee 
  # Can do attr_reader :first_name, :last_name, :salary, :active
  # attr_writer :first_name

  def print_info
    p "#{@first_name} #{@last_name} makes $#{@salary} per year."  # if you create methods for each instance variable (@first_name, etc), you can take out the @ in the string
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end

end

employee1 = Employee.new("Majora", "Carter", 80000, true)  # Employee1 created
employee2 = Employee.new("Danilo", "Campos", 70000, false) # employee2 = Employee.new({:first_name => "Danilo", :last_name => "Campos", :salary => 70000, :active => false}) --> only takes 1 argument, so def initialize(input_options)

# employee1.print_info

# Advantages of class: can easily modify each p entry (ex: change punctuation on string that prints out - will print out for every employee vs other ways you would have to change each entry).

# employee1.salary
# p employee1.give_annual_raise

# Note for classes: @_____ makes it available ONLY WITHIN CLASS. Cannot individually call any individual @_____ without making a method for it.

# p employee1.first_name
# employee1.first_name = "Joey"
# p employee1.first_name

#######################################################

class Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :salary

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    p "#{@first_name} #{@last_name} makes $#{@salary} per year."
  end

end

employee1 = Employee.new({:first_name => "Majora", :last_name => "Carter", :salary => 80000, :active => true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: false)

p employee1.first_name
employee2.print_info