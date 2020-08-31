class School
  attr_reader :roster, :num, :sort
  def initialize(name)
    @school = name
    @roster = {}
  end
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end
  def grade(num)
    @num = @roster[num]
    @num
  end
  def sort
    roster.each do |grade, name|
      name.sort!
    end
    roster
  end
end
