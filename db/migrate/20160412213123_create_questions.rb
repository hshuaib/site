class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :q
      t.text :ans

      t.timestamps null: false
    end
  end
end
