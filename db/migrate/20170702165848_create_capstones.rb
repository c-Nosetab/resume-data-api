class CreateCapstones < ActiveRecord::Migration[5.1]
  def change
    create_table :capstones do |t|
      t.string :name
      t.string :description
      t.string :url
      t.string :screenshot
      t.integer :student_id

      t.timestamps
    end
  end
end
