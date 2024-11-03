class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_email
      t.string :contact_email
      t.string :phone_number
      t.text :short_bio
      t.string :linkedin_url
      t.string :twitter_handle
      t.string :website_url
      t.string :resume_url
      t.string :github_url
      t.string :profile_image

      t.timestamps
    end
    add_index :students, :user_email
  end
end
