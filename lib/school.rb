require 'pry'
class School
    attr_reader :roster

    def initialize(roster)
        @roster = {}
        @school = "Bayside High School"
    end

    def add_student(student,num)
        
       roster[num]||=[]
       roster[num]<<student
    #    if roster[num]
    #     roster[num] << student
    # else
    #     roster[num] = []
    #     roster[num] << student
    # end 
    end

    def grade(num)
        @grade = roster[num]
    end

    def sort
        roster.each do |grade, name|
            roster[grade] = name.sort
        end
    end
end