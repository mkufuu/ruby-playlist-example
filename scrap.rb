puts self

puts self.class

class Student
    puts self

    def pass
        puts self
    end
end

alex = Student.new

alex.pass

