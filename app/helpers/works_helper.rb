module WorksHelper
    def show_work(time,week,group)
        #http://stackoverflow.com/questions/14824453/rails-raw-sql-example
        row = Work.joins("LEFT OUTER JOIN parttimes ON parttimes.id=works.parttime_id LEFT OUTER JOIN partweeks ON partweeks.id=works.partweek_id LEFT OUTER JOIN courses ON courses.id=works.course_id LEFT OUTER JOIN teachers ON teachers.id=works.teacher_id LEFT OUTER JOIN groups ON groups.id=works.group_id").where(["day_number=? and part_number=? and group_name=?",week,time,group]).select("*")
        row.each do |app|
           return app
        end
    end
end
