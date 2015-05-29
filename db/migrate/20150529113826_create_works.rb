class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.belongs_to :partweek
      t.belongs_to :parttime
      t.belongs_to :teacher
      t.belongs_to :course
      t.belongs_to :group
      t.timestamps null: false
    end
  end
end
