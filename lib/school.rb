class School
  #attr_accessor :roster
  attr_reader :name, :student_name, :grade, :roster
  
  #part 1
  def initialize(name)  
    @name = name
    @roster = {}
  end

  
  #part 3
  def add_student(student_name, grade_level)
    if @roster.key?(grade_level) #grade exists
      @roster[grade_level] << student_name
    else  
      @roster[grade_level] = [] #establish that this key will have an array value
      @roster[grade_level] << student_name #put items in this array value for this key
    end
  end

  #part 4
  def grade(grade_number)
    @roster[grade_number]
  end

  #part 5
  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end
end


#roster = hash: key -> grade, value -> array of student names 