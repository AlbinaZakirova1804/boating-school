class Instructor

attr_accessor :name
@@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    @@all
  end

  def boating_tests
    BoatingTest.all.select {|boatingtest| boatingtest.instructor == self}
  end

  # returns a single instuctor's students
  def students
    boating_tests.map{|test|test.student}
  end

end
