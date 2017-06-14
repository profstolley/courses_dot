class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :designation
      t.string :title
      t.string :site
      t.string :basecamp
      t.string :site_repo
      t.string :demo_repo
      t.string :work_repo

      t.timestamps
    end
  end
end
