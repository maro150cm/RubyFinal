class Course < ActiveRecord::Base
    validates :course_id, presence: { message: '請填寫 課程ID' },
    uniqueness: { message: '這個 課程ID 已經填寫過了' }
    validates :course_name, presence: { message: '請填寫 課程名稱' }
    validates :learn_point, presence: { message: '請填寫 學分數' }
    validates :entity_point, presence: { message: '請填寫 面授學分' }
    validates :learn_year, presence: { message: '請填寫 學年度' }
    validates :year_part, presence: { message: '請填寫 學期' }
    validates :course_kind, presence: { message: '請填寫 課程種類' }
    has_many :works
end
