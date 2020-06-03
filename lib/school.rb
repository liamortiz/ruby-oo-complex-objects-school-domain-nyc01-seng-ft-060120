class School
  
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, age)
    if @roster.key?(age)
      @roster[age] << name
    else
      @roster[age] = [name]
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    sorted_hash = {}
    @roster.each do |key, value|
      sorted_hash[key] = value.sort
    end
    sorted_hash
  end
end