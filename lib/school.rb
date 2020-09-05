class School
    attr_accessor :roster, :add_student, :grade, :sort

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student (student_name, student_grade)
        if @roster.key?(student_grade)
            @roster[student_grade] << student_name
        else
            @roster[student_grade] = []
            @roster[student_grade] << student_name
        end
    end

    def grade (grade_return)
        @roster[grade_return]
    end

    def sort
        sorted = {}
        @roster.each do |grade, name|
            sorted[grade] = name.sort
        end
        sorted
    end


end
