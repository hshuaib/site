class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :companyName
      t.string :jobTitle
      t.text :jobDescription
      t.string :contactPerson
      t.string :mobileNo
      t.string :email
      t.string :nationality
      t.string :gender
      t.integer :age
      t.string :disability
      t.string :education

      t.timestamps null: false
    end
  end
end
