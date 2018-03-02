require './manager.rb'
require './intern.rb'


employee1 = Employee.new({:first_name => "Majora", :last_name => "Carter", :salary => 80000, :active => true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: false)

p employee1.first_name
employee2.print_info

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_report

p manager
# manager.give_all_raises # getting an error - FIX
# manager.fire_all_employees
# p manager

intern1 = Intern.new({:first_name => "Ashook", :last_name => "Dilbert", :salary => 0, :active => true})
intern1.print_info
intern1.send_report
manager.send_report