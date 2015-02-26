class CreateCreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :preferred_name
      t.string :ssn
      t.date :date_of_birth
      t.string :place_of_birth
      t.boolean :arkansas_resident
      t.string :cell_phone
      t.string :work_phone
      t.string :email
      t.string :current_employer
      t.string :length_of_employment
      t.string :race
      t.string :gender
      t.string :citizenship
      t.string :visa_type
      t.string :country_of_citizenship
      t.string :requested_admission_year
      t.string :mis_program_type
      t.boolean :past_applicant
      t.date :past_application_date
      t.boolean :past_enrollment
      t.date :past_enrollment_date
      t.string :enrollment_type
      t.date :gmat_date
      t.integer :gmat_score
      t.date :toefl_date
      t.integer :toefl_score
      t.text :comments
      t.string :status
      t.boolean :alumni

      t.timestamps
    end
  end
end
