class CreatePatients < ActiveRecord::Migration
  def change
  	create_table :patients do |t|
  	  t.string :first_name
  	  t.string :last_name
  	  t.string :address1
  	  t.string :address2
  	  t.string :city
  	  t.string :state
  	  t.string :zip
  	  t.date   :dob
  	  t.string :phone
  	  t.timestamps
  	end
  	add_index :patients, :last_name
    add_index :patients, :first_name
  end
end