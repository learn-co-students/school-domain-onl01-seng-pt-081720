# school = School.new("Bayside High School")
# 1 Create a class, School, in the `lib` directory that can be initialized with a name. The School class would be referred to as a "model" in the domain model context. 

# 2 A school should have a roster. The roster should be an empty hash upon initialization but will be built out to contain keys of grade levels. The value of each key will be an array of student names. 
# ```ruby
# school.roster
# # => {}

# 3 You should be able to add a student to the school by calling the `add_student` method and giving it an argument of the student's name and their grade.
# Hint:** If the roster hash starts off as being empty, how will you add key/value pairs to it, where the value is an array? 

# 4 A method, `grade`, should take in an argument of a grade and return all of the students in that grade:
# 5 You should be able to get a sorted list of all the students where the strings in the student arrays are sorted alphabetically. 
# 6 ** important Note that since hashes are unordered by nature, the order of the keys does not matter here, just the order of the student's names within each array.


class School
  def initialize(name)
    @name = name
    @roster = {} #needs empty roster
  end
    
  def roster
    @roster
  end
  

  def add_student(name, grade) #able to add student 
    @roster[grade] ||= []
    @roster[grade] << name
  end


  def grade(grade)
    @roster[grade] #send and retrieve 
  end
  
   
    def sort
    @roster.each do |key, value|
      value.sort!
    end
  end
end