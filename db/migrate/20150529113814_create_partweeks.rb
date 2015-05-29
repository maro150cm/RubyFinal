class CreatePartweeks < ActiveRecord::Migration
  def change
    create_table :partweeks do |t|
      t.integer :day_number
      t.string  :week_name
      t.timestamps null: false
    end
  end
end
