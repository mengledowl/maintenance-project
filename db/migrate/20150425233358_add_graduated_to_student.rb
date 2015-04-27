class AddGraduatedToStudent < ActiveRecord::Migration
  def change
    add_column :students, :graduated, :boolean
  end
end
