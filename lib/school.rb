class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade]<< student
  end
  def grade(grade)
    #if roster = grade then return students
    roster.find do | grades, student |
      if grades == grade
        return student
      end
    end
  end
  def sort
  hash = {}
    roster.collect do |grades, student|
      hash[grades] = student.sort
    end
    return hash
  end
end
