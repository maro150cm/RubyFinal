class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :teach_id
      t.string :teach_name
      t.string :teach_gender
      t.string :teach_level
      t.string :addr_no
      t.string :address
      t.string :tel
      t.timestamps null: false
    end
  end
end
