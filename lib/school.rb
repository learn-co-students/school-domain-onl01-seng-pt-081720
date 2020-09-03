# class School, needs a roster w/ {} on initialization; keys = grades
# add_student method(name, grade) *how will i add key/value pairs with it being empty? the value is an []
# key points to the value of an array, it should contain a series of items. NOTE: do not shovel, error will ocrrur since we have to first create a new key THEN << into []
# create a key grade 9 to point to an [], OR if it already exists, erase contents and set it equal to an [empty]
# def grade(grade) returns all of the students in that grade
# get sorted list of all students where strings in student []s are sorted abc

require 'pry'

class School
  attr_reader :roster
  attr_accessor :name

  def initialize(name)
    @name = name
    @roster = {}

  end

  def add_student(student, level)

    if roster[level] == nil # <-- roster doesn't have this level
      roster[level] = [student] # <-- add this level to roster w/student
        student
    else
      roster[level] << student
      
    end
    roster
  end

  def grade(student_grade)
    roster[student_grade]
  # binding.pry #access the key to the value of 10
  end

  def sort
    new_hash = {}
    roster.each do |grade, student|
      new_hash[grade] = student.sort # <-- student is the value, not name - name causes it to fail?
  #    binding.pry
    # new hash, {}
    # iterate over roster.each do |x,y| 
    # access value of keys, call .sort on values abc
    end
    new_hash  # <-- return the new hash w/sorted hash elements
  
  end
end


# a = School.new("This is some school")
# puts a.name

# a.add_student("Avi", 9)
# a.add_student("Fred", 9)
# puts a.roster
# puts a.grade(9)