class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :QID
      t.string :nationality
      t.date :dob
      t.string :gender
      t.string :status
      t.integer :noOfChildren
      t.string :livingArea
      t.string :phoneNo
      t.string :mobileNo
      t.string :disability
      t.string :details
      t.text :notes
      t.string :age
      t.string :reason
      t.string :education
      t.text :workshop
      t.boolean :currentJob
      t.text :jobDescription
      t.text :abilities
      t.text :preference
      t.string :skills

      t.timestamps null: false
    end
  end
end
