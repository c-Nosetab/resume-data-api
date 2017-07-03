class AddStudentIdToExperiences < ActiveRecord::Migration[5.1]
  def change
    add_column :experiences, :student_id, :integer
  end
end
