class CreateJobPostings < ActiveRecord::Migration
  def change
    create_table :job_postings do |t|
      t.text :description
      t.decimal :required_gpa

      t.timestamps
    end
  end
end
