class SsnToString < ActiveRecord::Migration
  def change
    change_column :students, :ssn, :string
  end
end
