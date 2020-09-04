require 'pry'

class School
  
  attr_accessor :roster
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def add_student(student_name, level)
    if roster[level] == nil
      roster[level] = [student_name]
    else 
      roster[level] << student_name
    end
    roster
    #binding.pry
  end
  
  
  def grade(student_name)
    roster[student_name]
    #binding.pry
  end
  
  def sort
    new_hash = {}
    roster.each do |grade, student_name|
    new_hash[grade] = student_name.sort
    #binding.pry
    end
    new_hash
  end
end