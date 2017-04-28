class School
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(g)
    @roster[g]
  end

  def sort
    @roster.each do |grade, array|
      @roster[grade] = array.sort
    end
  end

end
