class RemoveStudentIdFromStudents < ActiveRecord::Migration[5.1]
  def change
    remove_column :students, :student_id, :integer
  end
end
