class School
  
  attr_accessor :roster
  attr_reader :school
  
  def initialize(school_name)
    array = []
    @school = school_name
    @roster = {}
  end
    
   def school 
     @school 
  end 
  
  def add_student(student, grade)
     if @roster.keys.include?(grade)
      @roster[grade] << student
    else
      @roster[grade] = [student]
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    @roster.each do |new_grade, student|
      student.sort!
  end 
end
  
end