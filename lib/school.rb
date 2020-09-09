class School
  attr_reader :roster

  def initialize(school_name)
    @name = school_name

    @roster = {}
  end

  def add_student(name, grade)
    if @roster.include?(grade) == false 
      @roster[grade] = []
    end
    @roster[grade] << name 
   end

   def grade(grade_level)
    @roster[grade_level]
   end

   def sort 
    @roster.each do |grade, name| 
      @roster[grade] = name.sort
    end 
  end 
end