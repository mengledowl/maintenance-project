class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.string :term
      t.string :grade
      t.references :student

      t.timestamps
    end
  end
end
