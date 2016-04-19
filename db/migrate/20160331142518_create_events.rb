class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.attachment :picture
      t.string :place
      t.date :datefrom
      t.date :dateto
      t.time :time

      t.timestamps null: false
    end
  end
end
