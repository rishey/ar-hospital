require 'faker'
require_relative '../app/models/patient.rb'

# Patient.create(:name => "Patient")

100.times do 
  Patient.create(:first_name => Faker::Name.first_name,
              :last_name => Faker::Name.last_name,
              :address1 => Faker::Address.street_address,#(include_secondary = true),
              :address2 => Faker::Address.secondary_address,
              :city => Faker::Address.city,
              :state => Faker::Address.state_abbr,
              :zip => Faker::Address.zip_code,
              :dob => "01/03/67",
              :phone => Faker::PhoneNumber.phone_number)
end
