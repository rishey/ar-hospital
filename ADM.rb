require_relative 'config/application'
require_relative 'app/controllers/controller.rb'

# puts "Put your application code in #{File.expand_path(__FILE__)}"




# p find_by_last_name(:last_name => "Crooks")
#p list
patient = Patient.find_by_last_name("Bogan")
puts
puts "#{patient.first_name} #{patient.last_name}"
puts "#{patient.address1}, #{patient.address2}"
puts "#{patient.city}, #{patient.state}  #{patient.zip}"
puts 
puts "#{patient.phone}     #{patient.dob}"


newray =[]
fred = Patient.all.sort.map do |patient|
	[patient.id]+[patient.last_name] + [patient.first_name]
end

found = Patient.find_by_state("IL")
p found.city + " " +found.state

found = Patient.first#find_by_state("IL").first
p found.city
p fred.length
