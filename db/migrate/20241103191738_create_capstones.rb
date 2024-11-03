class CreateCapstones < ActiveRecord::Migration[7.1]
  def change
    create_table :capstones do |t|
      t.integer :student_id
      t.string :name
      t.string :description
      t.string :capstone_url
      t.string :capstone_image

      t.timestamps
    end
  end
end
