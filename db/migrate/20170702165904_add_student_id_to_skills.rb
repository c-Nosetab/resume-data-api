class AddStudentIdToSkills < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :student_id, :integer
  end
end
