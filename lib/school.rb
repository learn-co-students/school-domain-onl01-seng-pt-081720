class School
  attr_reader :roster, :name, :grade
  def initialize (name)
    @name = name
    @roster = {}
  end
  def add_student(name, grade_level)
    if @roster.include? (grade_level)
    @roster[grade_level] << name
  else
    @roster [grade_level] = [name]
    end
  end
  def grade (grade_level)
    @roster[grade_level]
end
def sort
 sort_hash ={}
 @roster.keys.sort.each do |names|
   sort_hash[names]=@roster[names].sort
 end
sort_hash
end

end