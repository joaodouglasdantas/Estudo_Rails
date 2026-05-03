class StudentTeacher < ActiveRecord::Migration[8.1]
  def change
    create_table :student_teachers do |t|
      t.belongs_to :student
      t.belongs_to :teacher
    end
  end
end
