class School
  attr_accessor :roster
  
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
    @roster.select{|g| g == grade}
  end
  
  def sort
    @roster.sort_by { |w| w[0].match?(/[A-Z]/) ? 0 : 1 }
  end
end