class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.integer :phoneNumber
      t.date :DOB
      t.integer :passportNumber

      t.timestamps
    end
  end
end
