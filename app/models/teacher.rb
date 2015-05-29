class Teacher < ActiveRecord::Base
    validates :teach_id, presence: { message: '請填寫 老師ID' },
    uniqueness: { message: '這個 老師ID 已經填寫過了' }
    validates :teach_name, presence: { message: '請填寫 老師姓名' }
    validates :teach_gender, presence: { message: '請填寫 老師性別' }
    validates :teach_level, presence: { message: '請填寫 老師職等' }
    validates :addr_no, presence: { message: '請填寫 郵遞區號' }
    validates :address, presence: { message: '請填寫 地址' }
    validates :tel, presence: { message: '請填寫 電話' }
    has_many :works
end
