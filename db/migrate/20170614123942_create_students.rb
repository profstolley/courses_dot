class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :roster_first
      t.string :roster_last
      t.string :preferred_first
      t.string :university_email
      t.string :preferred_email
      t.string :github_username

      t.timestamps
    end
  end
end
