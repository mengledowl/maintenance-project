class AddTitleToJobPostings < ActiveRecord::Migration
  def change
    add_column :job_postings, :title, :string
  end
end
