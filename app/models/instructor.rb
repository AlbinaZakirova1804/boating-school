class Instructor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
      @@all
  end

  # def fail_student(student_name, test_name)
  #
  # end
end
