class AddAttributesToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :first_name, :string
    add_column :students, :last_name, :string
    add_column :students, :email, :string
    add_column :students, :phone, :string
    add_column :students, :short_bio, :text
    add_column :students, :linkedin_url, :string
    add_column :students, :twitter_handle, :string
    add_column :students, :personal_website_url, :string
    add_column :students, :online_resume_url, :string
    add_column :students, :github_url, :string
    add_column :students, :photo, :string
  end
end
