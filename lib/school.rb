require 'pry'


class School

  attr_accessor :roster, :name, :grade
  attr_reader

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end



  def sort
    i= 0
    while i < @roster.length
      @roster.to_a[i][1].sort!
      i +=1
    end
    @roster
  end

end
