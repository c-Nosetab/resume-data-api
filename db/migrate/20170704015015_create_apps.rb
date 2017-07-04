class CreateApps < ActiveRecord::Migration[5.1]
  def change
    create_table :apps do |t|
      t.string :email
      t.string :api_key

      t.timestamps
    end
  end
end
