class Teacher < User
  def students
    objects.students
  end
end
