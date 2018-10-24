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

def add_boating_test(instructor, boating_test_name, boating_test_status)
  BoatingTest.new(self, instructor, boating_test_name, boating_test_status)

end

end
