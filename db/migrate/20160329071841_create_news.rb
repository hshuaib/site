class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.date :date
      t.attachment :picture
      t.text :body

      t.timestamps null: false
    end
  end
end
