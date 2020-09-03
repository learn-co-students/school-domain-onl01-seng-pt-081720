# code here!
class School 
  attr_accessor :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end
 
  def grade(level)
    roster.detect do |x, y| 
      if x == level
        return y 
      end 
    end 
  end
  
  def sort 
    nu_hash = {}
    roster.each do |x, y| 
      nu_hash[x] = y.sort 
    end 
  nu_hash
end 
end

