# grade_school.rb
#
# This is a pretty simple one. It's probably possible to do this just within the School class, but
# I figured there's probably a reasonable case to be made for a Grade class that could be extended
# later, for example if we wanted to track teachers as well or something.
#
# Otherwise, the API in the tests is pretty simple. Some defensive programming in here for nils but
# nothing too fancy.

class School
  def initialize
    @grades = {}
  end

  def add(student, grade)
    if @grades[grade].nil?
      @grades[grade] = Grade.new(grade)
    end

    @grades[grade].add_student(student)
  end

  def students(grade)
    @grades[grade].nil? ? [] : @grades[grade].students.sort
  end

  def students_by_grade
    @grades.map do |_, grade|
      {
        grade: grade.number,
        students: grade.students.sort
      }
    end.sort_by {|g| g[:grade]}
  end

  class Grade
    attr_accessor :number, :students

    def initialize(num)
      @number   = num
      @students = []
    end

    def add_student(student)
      @students << student
    end
  end
end
