require("minitest/autorun")
require("minitest/rg")
require_relative("./student.rb")

class TestStudentInfo < MiniTest::Test

  def test_student_init()
    student = Student.new("Sonny", 6)
    assert_equal("Sonny", student.get_name())
    assert_equal(6, student.get_cohort())
  end

  def test_new_info()
    student = Student.new("Bingo", 19)
    student.set_name("Bark")
    student.set_cohort(20)
    assert_equal("Bark", student.get_name())
    assert_equal(20, student.get_cohort())
  end

  def test_student_talk()
    student = Student.new("Sonny", 6)
    speech = student.student_talks()
    assert_equal("I can talk!", speech)
  end

  def test_fav_language()
    student = Student.new("Sonny", 6)
    choice = student.fav_language("Ruby")
    assert_equal("My favourite language is Ruby!", choice)
  end

end
