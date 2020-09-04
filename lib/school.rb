# code here!
class School
    attr_accessor :name, :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    
    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
    end

    def grade(level)
        roster.find do |grade, name|
            if grade == level
                return name
            end
        end
    end

    def sort
        alpha = {}
        roster.each do |grade, name|
            alpha[grade] = name.sort
        end
        alpha
    end
end