class CreateEnrollments < ActiveRecord::Migration[5.1]
  def change
    create_table :enrollments do |t|
      t.references :course, foreign_key: true
      t.references :student, foreign_key: true
      t.boolean :contract_acceptance
      t.string :term
      t.string :survey_token

      t.timestamps
    end
  end
end
