require_relative '../config/environment'

# Declare your variables here~~~

susan = Student.new("Susan", "Egg")
roman = Student.new("Roman", "Cheese")
albina = Student.new("Albina", "Butter")

kevin = Instructor.new("Kevin")
happy_pants = Instructor.new("Happy Pants")

# (student, test_name, test_status, instructor)
test1 = BoatingTest.new(susan, "code challenge", "pending", kevin)
# add_boating_test(instructor, test_name, test_status)
susan.add_boating_test(happy_pants, "crosswords", "complete")
roman.add_boating_test(kevin, "another test", "pending")
albina.add_boating_test(happy_pants, "hip-hop dance test", "complete")
# don't remove!
binding.pry
0
