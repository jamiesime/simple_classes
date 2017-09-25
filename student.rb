

class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def get_name()
    return @name
  end

  def get_cohort()
    return @cohort
  end

  def set_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def student_talks()
    return "I can talk!"
  end

  def fav_language(choice)
    return "My favourite language is #{choice}!"
  end

end
