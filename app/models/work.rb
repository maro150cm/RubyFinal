class Work < ActiveRecord::Base
    validates :partweek_id, presence: { message: '請填寫 星期' },
    uniqueness: { scope: [:parttime_id,:group_id], message: '這個 排課 已經填寫過了' }  #只要用uniqueness and scope[add 1 column,add 2 column,...]達到輸入前檢查資料唯一性
    validates :parttime_id, presence: { message: '請填寫 節次' }
    validates :course_id, presence: { message: '請填寫 課程' }
    validates :teacher_id, presence: { message: '請填寫 老師' }
    validates :group_id, presence: { message: '請填寫 班級' }
    
    belongs_to :partweek
    belongs_to :parttime
    belongs_to :teacher
    belongs_to :course
    belongs_to :group
end
