# code here!
class School

  attr_accessor :roster

  def initialize(roster)
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(grade)
    roster[grade]
  end

    def sort
      sort = {}
      roster.each do |grade, student_name|
        sort[grade] = student_name.sort
      end
      sort
    end
end
