require 'pry'

class School

    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end



    def add_student(name, grade)
        if @roster.include?(grade)
            # if the hash already has a value for the grade, then just append to it
            @roster[grade] << name
        else
            # if the hash does not have a value for the grade, then just create it
            @roster[grade] = []
            @roster[grade] << name

        end
    end

    def grade(grade)
        @roster[grade]
    end
    
    def sort

        # sort the strings in the arrays
        @roster.each do |key, value|
            new_array = value.sort
            @roster[key] = new_array
        end
        
        #sort by grade too because that's nice
        @roster = @roster.sort_by {|_key, value| _key }.to_h

        @roster
    end

end