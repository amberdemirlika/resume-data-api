class CreateSkills < ActiveRecord::Migration[7.1]
  def change
    create_table :skills do |t|
      t.integer :student_id
      t.string :skill_name

      t.timestamps
    end
  end
end
