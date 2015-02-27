class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :college_attended
      t.string :dates_attended
      t.decimal :gpa
      t.integer :semester_hours
      t.string :degree_major
      t.integer :current_employment_hours
      t.references :student

      t.timestamps
    end
  end
end
