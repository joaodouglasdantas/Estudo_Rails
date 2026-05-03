class RenameStudentTeachersToStudentsTeachers < ActiveRecord::Migration[8.1]
  def change
    rename_table :student_teachers, :students_teachers
  end
end
