class Parttime < ActiveRecord::Base
    validates :part_number, presence: { message: '請填寫 節次' },
    uniqueness: { message: '這個 節次 已經填寫過了' }
    validates :start_time, presence: { message: '請填寫 開始時間' }
    validates :end_time, presence: { message: '請填寫 結束時間' }
    has_many :works
end
