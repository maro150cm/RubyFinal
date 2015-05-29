class Group < ActiveRecord::Base
    validates :group_name, presence: { message: '請填寫 班級名稱' },
    uniqueness: { message: '這個 班級名稱 已經填寫過了' }
    has_many :works
end
