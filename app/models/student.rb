class Student
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.full_names
    @@all.map do |student|
      "#{student.first_name} #{student.last_name}"
    end
  end

  def self.find_student(full_name)
    @@all.find do |student|
      full_name == "#{student.first_name} #{student.last_name}"
    end
    # full_names.each do |name|
    #   if name == full_name
    #     return name
    #   end
    # end
  end

  def add_boating_test(instructor, test_name, test_status)
    # (student, test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def tests
    BoatingTest.all.select do |test|
      test.student == self
    end
  end

end
