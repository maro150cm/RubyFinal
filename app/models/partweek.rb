class Partweek < ActiveRecord::Base
    validates :day_number, presence: { message: '請填寫 天數' },
    uniqueness: { message: '這個 天數 已經填寫過了' }
    validates :week_name, presence: { message: '請填寫 星期' }
    has_many :works
end
