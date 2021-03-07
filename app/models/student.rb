class Student < User
  def teachers
    subjects.teachers
  end
end
