class School

  def initialize(name)
    @school_name = name
    @roster = {}
  end

def roster
  return @roster
end
  def add_student(name, grade)
    @name = name
    @grade = grade
    if @roster.include?(grade)==false
    @roster[grade] = []
  end
    @roster[grade] << name
  end

  def grade(num)
    return @roster[num]
  end

  def sort
    @roster.each do |grade, names|
      @roster[grade] = names.sort
      #because this calls on the array itself
    end
  end
  end
