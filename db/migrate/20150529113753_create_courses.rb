class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string  :course_id
      t.string  :course_name
      t.integer :learn_point
      t.integer :entity_point
      t.string  :learn_year
      t.string  :year_part
      t.string  :course_kind
      t.timestamps null: false
    end
  end
end
