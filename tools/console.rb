require_relative '../config/environment'

# Declare your variables here~~~
#(first_name, last_name)
student1 = Student.new("Kevin", "McAlear")
student2 = Student.new("Mendy", "Cohen")
student3 = Student.new("Rufat", "Aghayev")

#(name)
instructor1 = Instructor.new("Greg")
instructor2 = Instructor.new("Bob")
instructor3 = Instructor.new("David")

#(student, instructor, boating_test_name, boating_test_status)
boating1 = BoatingTest.new(student1, instructor1, "Whitewater", "On")
boating2 = BoatingTest.new(student2, instructor2, "Slowwater", "Starting")
boating3 = BoatingTest.new(student3, instructor3, "Water", "Ending")
boating4 = BoatingTest.new(student1, instructor1, "Whitewater2", "On2")

student2.add_boating_test(instructor1,"boatingtestname", "statuscsdf")
# don't remove!
binding.pry
0
