# code here!
class School
attr_accessor :roster


  def initialize school
    @school = school
    @roster = {}
  end


  def add_student(student, grade)
    if !roster.key?(grade)
      roster[grade] = []
      roster[grade] << student
    else
      roster[grade] << student
    end
  end

  def grade(grade_num)
    roster[grade_num]
  end

  def sort
    sorted = {}
    roster.each do |grade, students|
    sorted[grade] = students.sort
    end
    sorted
  end

end
